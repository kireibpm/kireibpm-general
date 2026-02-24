#!/usr/bin/env python3
"""Inventory Maven dependency/repository references that block independence from upstream.

Scans all pom.xml under a root directory and extracts:
- project coordinates (groupId/artifactId/version when present)
- repository URLs (repositories, pluginRepositories)
- distributionManagement URLs (release/snapshot)
- dependency coordinates that match Bonita-related groupIds/artifactIds

Outputs a Markdown report (and optional TSV) suitable for triage.

Note: This is a best-effort static scan; effective resolution order can be influenced
by corporate settings.xml mirrors, CI settings, and parent POM inheritance.
"""

from __future__ import annotations

import argparse
import datetime as _dt
import os
import re
import sys
import textwrap
import xml.etree.ElementTree as ET
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Optional


BONITA_URL_RE = re.compile(r"bonita|bonitasoft", re.IGNORECASE)
BONITA_GROUP_RE = re.compile(r"^(org\.bonitasoft|com\.bonitasoft)(\.|$)")
BONITA_ARTIFACT_RE = re.compile(r"(^bonita[-.]|bonitasoft)", re.IGNORECASE)


@dataclass(frozen=True)
class RepoRef:
    kind: str  # repositories | pluginRepositories | distributionManagement-release | distributionManagement-snapshot
    url: str


@dataclass
class PomScan:
    path: Path
    project_group_id: str = ""
    project_artifact_id: str = ""
    project_version: str = ""
    repo_refs: list[RepoRef] = None
    bonita_deps: list[tuple[str, str, str]] = None

    def __post_init__(self) -> None:
        if self.repo_refs is None:
            self.repo_refs = []
        if self.bonita_deps is None:
            self.bonita_deps = []


def _local_name(tag: str) -> str:
    # '{namespace}name' -> 'name'
    if tag.startswith("{"):
        return tag.split("}", 1)[1]
    return tag


def _iter_children_by_name(node: ET.Element, child_name: str) -> Iterable[ET.Element]:
    for child in list(node):
        if _local_name(child.tag) == child_name:
            yield child


def _find_first_text(node: ET.Element, child_name: str) -> str:
    for child in _iter_children_by_name(node, child_name):
        if child.text:
            return child.text.strip()
        return ""
    return ""


def _collect_repo_urls(project: ET.Element) -> list[RepoRef]:
    refs: list[RepoRef] = []

    def collect_from_container(container_name: str, kind: str) -> None:
        for container in _iter_children_by_name(project, container_name):
            for repo in _iter_children_by_name(container, "repository"):
                url = _find_first_text(repo, "url")
                if url:
                    refs.append(RepoRef(kind=kind, url=url))

    collect_from_container("repositories", "repositories")
    collect_from_container("pluginRepositories", "pluginRepositories")

    for dist in _iter_children_by_name(project, "distributionManagement"):
        for repo in _iter_children_by_name(dist, "repository"):
            url = _find_first_text(repo, "url")
            if url:
                refs.append(RepoRef(kind="distributionManagement-release", url=url))
        for repo in _iter_children_by_name(dist, "snapshotRepository"):
            url = _find_first_text(repo, "url")
            if url:
                refs.append(RepoRef(kind="distributionManagement-snapshot", url=url))

    return refs


def _collect_bonita_dependencies(project: ET.Element) -> list[tuple[str, str, str]]:
    bonita_deps: list[tuple[str, str, str]] = []

    def collect_from(parent_name: str) -> None:
        for deps in _iter_children_by_name(project, parent_name):
            for dep in _iter_children_by_name(deps, "dependency"):
                gid = _find_first_text(dep, "groupId")
                aid = _find_first_text(dep, "artifactId")
                ver = _find_first_text(dep, "version")
                if not (gid or aid):
                    continue
                if BONITA_GROUP_RE.search(gid) or BONITA_ARTIFACT_RE.search(aid):
                    bonita_deps.append((gid, aid, ver))

    collect_from("dependencies")

    # plugin dependencies are also important for build reproducibility
    for build in _iter_children_by_name(project, "build"):
        for plugins in _iter_children_by_name(build, "plugins"):
            for plugin in _iter_children_by_name(plugins, "plugin"):
                gid = _find_first_text(plugin, "groupId")
                aid = _find_first_text(plugin, "artifactId")
                ver = _find_first_text(plugin, "version")
                if not (gid or aid):
                    continue
                if BONITA_GROUP_RE.search(gid) or BONITA_ARTIFACT_RE.search(aid):
                    bonita_deps.append((gid, aid, ver))

    return bonita_deps


def scan_pom(pom_path: Path) -> PomScan:
    scan = PomScan(path=pom_path)

    try:
        tree = ET.parse(pom_path)
    except ET.ParseError as exc:
        raise ValueError(f"XML parse error: {exc}") from exc

    project = tree.getroot()
    if _local_name(project.tag) != "project":
        raise ValueError(f"Unexpected root element: {project.tag}")

    scan.project_group_id = _find_first_text(project, "groupId")
    scan.project_artifact_id = _find_first_text(project, "artifactId")
    scan.project_version = _find_first_text(project, "version")

    scan.repo_refs = _collect_repo_urls(project)
    scan.bonita_deps = _collect_bonita_dependencies(project)

    return scan


def iter_poms(root: Path) -> Iterable[Path]:
    for path in root.rglob("pom.xml"):
        # Ignore embedded archetype resource poms from reports if you want; for now keep them
        yield path


def format_md_report(
    root: Path,
    total_poms: int,
    parse_errors: list[tuple[Path, str]],
    repo_url_counter: Counter[str],
    bonita_repo_urls: Counter[str],
    bonita_dep_counter: Counter[tuple[str, str, str]],
    poms_with_bonita_repos: dict[str, list[Path]],
    poms_with_bonita_deps: dict[str, list[Path]],
) -> str:
    now = _dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    def top_lines(counter: Counter, n: int = 25) -> str:
        lines = []
        for key, count in counter.most_common(n):
            lines.append(f"- {count} × {key}")
        return "\n".join(lines) if lines else "- (none)"

    def paths_lines(paths: list[Path], limit: int = 40) -> str:
        shown = paths[:limit]
        lines = [f"- {p.relative_to(root)}" for p in shown]
        if len(paths) > limit:
            lines.append(f"- … and {len(paths) - limit} more")
        return "\n".join(lines) if lines else "- (none)"

    md = []
    md.append(f"# KireiBPM Maven dependency inventory\n")
    md.append(f"Generated: {now}\n")
    md.append("## Summary")
    md.append(f"- Root: `{root}`")
    md.append(f"- pom.xml scanned: {total_poms}")
    md.append(f"- XML parse errors: {len(parse_errors)}")
    md.append(f"- Unique repository URLs: {len(repo_url_counter)}")
    md.append(f"- Unique Bonita-matching repo URLs: {len(bonita_repo_urls)}")
    md.append(f"- Unique Bonita-matching deps/plugins (gid/aid/ver): {len(bonita_dep_counter)}\n")

    md.append("## Top repository URLs (all)")
    md.append(top_lines(repo_url_counter))
    md.append("")

    md.append("## Top Bonita-matching repository URLs")
    md.append(top_lines(bonita_repo_urls))
    md.append("")

    md.append("## Top Bonita-matching deps/plugins")
    md.append(top_lines(Counter({f"{gid}:{aid}:{ver}": c for (gid, aid, ver), c in bonita_dep_counter.items()})))
    md.append("")

    md.append("## POMs referencing Bonita repo URLs")
    if not poms_with_bonita_repos:
        md.append("- (none)")
    else:
        for url, paths in sorted(poms_with_bonita_repos.items(), key=lambda kv: (-len(kv[1]), kv[0])):
            md.append(f"### {url} ({len(paths)})")
            md.append(paths_lines(paths))
            md.append("")

    md.append("## POMs with Bonita-matching deps/plugins")
    if not poms_with_bonita_deps:
        md.append("- (none)")
    else:
        for key, paths in sorted(poms_with_bonita_deps.items(), key=lambda kv: (-len(kv[1]), kv[0]))[:50]:
            md.append(f"### {key} ({len(paths)})")
            md.append(paths_lines(paths))
            md.append("")

    if parse_errors:
        md.append("## XML parse errors")
        for path, err in parse_errors[:100]:
            md.append(f"- {path.relative_to(root)}: {err}")
        if len(parse_errors) > 100:
            md.append(f"- … and {len(parse_errors) - 100} more")
        md.append("")

    md.append("## Notes")
    md.append(textwrap.dedent(
        """\
        - This report is a static scan of POM files. Maven inheritance (parent POM), profiles, and CI `settings.xml` mirrors may affect the *effective* repositories.
        - For full independence, the goal is: builds succeed with Bonita repositories unavailable (network blocked) by hosting all required artifacts in an internal repo.
        - Consider migrating coordinates away from `org.bonitasoft.*` for long-term public readiness and trademark clarity; you can do a temporary internal override as a bridge.
        """
    ).strip())

    return "\n".join(md) + "\n"


def write_tsv(path: Path, rows: Iterable[list[str]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        for row in rows:
            f.write("\t".join((c or "") for c in row))
            f.write("\n")


def main(argv: Optional[list[str]] = None) -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--root",
        default=str(Path(__file__).resolve().parents[1] / "kireibpm-org-clone"),
        help="Root directory containing cloned repositories (default: ../kireibpm-org-clone)",
    )
    parser.add_argument(
        "--out-md",
        default="",
        help="Output Markdown path (default: <root>/_dependency-inventory_<timestamp>.md)",
    )
    parser.add_argument(
        "--out-tsv",
        default="",
        help="Optional output TSV path with raw findings",
    )

    args = parser.parse_args(argv)
    root = Path(args.root).resolve()
    if not root.exists():
        print(f"Root does not exist: {root}", file=sys.stderr)
        return 2

    timestamp = _dt.datetime.now().strftime("%Y%m%d-%H%M%S")
    out_md = Path(args.out_md).resolve() if args.out_md else root / f"_dependency-inventory_{timestamp}.md"
    out_tsv = Path(args.out_tsv).resolve() if args.out_tsv else None

    total_poms = 0
    parse_errors: list[tuple[Path, str]] = []

    repo_url_counter: Counter[str] = Counter()
    bonita_repo_urls: Counter[str] = Counter()

    bonita_dep_counter: Counter[tuple[str, str, str]] = Counter()

    poms_with_bonita_repos: dict[str, list[Path]] = defaultdict(list)
    poms_with_bonita_deps: dict[str, list[Path]] = defaultdict(list)

    tsv_rows: list[list[str]] = []
    tsv_rows.append([
        "pom_path",
        "project_groupId",
        "project_artifactId",
        "project_version",
        "repo_kind",
        "repo_url",
        "bonita_dep_groupId",
        "bonita_dep_artifactId",
        "bonita_dep_version",
    ])

    for pom_path in iter_poms(root):
        total_poms += 1
        try:
            scan = scan_pom(pom_path)
        except Exception as exc:  # noqa: BLE001
            parse_errors.append((pom_path, str(exc)))
            continue

        # repos
        for ref in scan.repo_refs:
            repo_url_counter[ref.url] += 1
            is_bonita = bool(BONITA_URL_RE.search(ref.url))
            if is_bonita:
                bonita_repo_urls[ref.url] += 1
                poms_with_bonita_repos[ref.url].append(pom_path)

            tsv_rows.append([
                str(pom_path.relative_to(root)),
                scan.project_group_id,
                scan.project_artifact_id,
                scan.project_version,
                ref.kind,
                ref.url,
                "",
                "",
                "",
            ])

        # bonita deps/plugins
        for gid, aid, ver in scan.bonita_deps:
            key = (gid, aid, ver)
            bonita_dep_counter[key] += 1
            coord = f"{gid}:{aid}"
            poms_with_bonita_deps[coord].append(pom_path)

            tsv_rows.append([
                str(pom_path.relative_to(root)),
                scan.project_group_id,
                scan.project_artifact_id,
                scan.project_version,
                "",
                "",
                gid,
                aid,
                ver,
            ])

    report = format_md_report(
        root=root,
        total_poms=total_poms,
        parse_errors=parse_errors,
        repo_url_counter=repo_url_counter,
        bonita_repo_urls=bonita_repo_urls,
        bonita_dep_counter=bonita_dep_counter,
        poms_with_bonita_repos=poms_with_bonita_repos,
        poms_with_bonita_deps=poms_with_bonita_deps,
    )

    out_md.parent.mkdir(parents=True, exist_ok=True)
    out_md.write_text(report, encoding="utf-8")
    print(f"Wrote: {out_md}")

    if out_tsv:
        write_tsv(out_tsv, tsv_rows)
        print(f"Wrote: {out_tsv}")

    # Non-zero exit if there are parse errors, but keep it informational.
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
