#!/usr/bin/env python3

from __future__ import annotations

import argparse
import datetime as dt
import os
import re
from dataclasses import dataclass
from pathlib import Path


REPO_DIR_EXCLUDES = {".git", "node_modules", "target", "build", ".gradle", ".idea", ".vscode"}


@dataclass
class Match:
    file: Path
    line_no: int
    line: str
    tag: str


PATTERNS: list[tuple[str, re.Pattern[str]]] = [
    ("bonitasoft_name", re.compile(r"BonitaSoft|Bonitasoft|bonitasoft")),
    ("bonita_name", re.compile(r"\bBonita\b|Bonita BPM|Bonita Studio|BonitaStudio")),
    ("github_upstream", re.compile(r"github\.com/bonitasoft/")),
    ("maven_groupid", re.compile(r"<groupId>\s*org\.bonitasoft[\w.]*\s*</groupId>")),
    ("java_package", re.compile(r"^\s*package\s+org\.bonitasoft[\w.]*\s*;")),
    ("bonita_artifact", re.compile(r"<artifactId>\s*bonita-[^<]+</artifactId>")),
    ("scm_bonitasoft", re.compile(r"scm:git:.*github\.com/bonitasoft/|developerConnection>\s*scm:git:.*bonitasoft")),
    ("docker_bonitasoft", re.compile(r"bonitasoft\.jfrog\.io|bonita-subscription")),
    ("marketplace", re.compile(r"bonita-marketplace")),
]


def is_binary(path: Path) -> bool:
    try:
        with path.open("rb") as f:
            chunk = f.read(2048)
        return b"\0" in chunk
    except Exception:
        return True


def iter_repo_files(repo_dir: Path) -> list[Path]:
    files: list[Path] = []
    for root, dirs, filenames in os.walk(repo_dir):
        dirs[:] = [d for d in dirs if d not in REPO_DIR_EXCLUDES]
        for name in filenames:
            p = Path(root) / name
            files.append(p)
    return files


def is_candidate_file(path: Path) -> bool:
    # Keep this light; we're looking for branding/licensing/build metadata.
    name = path.name.lower()
    if name.startswith("."):
        return False
    if name.endswith((".png", ".jpg", ".jpeg", ".gif", ".pdf", ".zip", ".jar", ".class", ".exe")):
        return False
    if name in {"package-lock.json", "yarn.lock", "pnpm-lock.yaml"}:
        return False
    return True


def scan_file(path: Path) -> list[Match]:
    if not is_candidate_file(path) or is_binary(path):
        return []

    matches: list[Match] = []
    try:
        text = path.read_text(encoding="utf-8", errors="replace")
    except Exception:
        return []

    for idx, line in enumerate(text.splitlines(), start=1):
        for tag, pattern in PATTERNS:
            if pattern.search(line):
                matches.append(Match(file=path, line_no=idx, line=line.strip(), tag=tag))
    return matches


def license_notice_status(repo_dir: Path) -> tuple[bool, bool]:
    # Only check repo root; deeper license files are usually third-party.
    root = repo_dir
    has_license = any((root / n).exists() for n in ["LICENSE", "LICENSE.txt", "LICENSE.md", "COPYING", "COPYING.txt"])
    has_notice = any((root / n).exists() for n in ["NOTICE", "NOTICE.txt", "NOTICE.md"])
    return has_license, has_notice


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("root", type=Path, help="Path to org clone root (contains many repos)")
    parser.add_argument("--max-per-tag", type=int, default=10, help="Max sample lines per tag per repo")
    args = parser.parse_args()

    root: Path = args.root
    if not root.exists() or not root.is_dir():
        raise SystemExit(f"Root directory not found: {root}")

    repos = sorted([p for p in root.iterdir() if p.is_dir() and (p / ".git").exists()])
    ts = dt.datetime.now().strftime("%Y%m%d-%H%M%S")
    report_path = root / f"_public-readiness-audit_{ts}.md"

    lines: list[str] = []
    lines.append(f"# Public readiness audit (Bonita/BonitaSoft references)\n")
    lines.append(f"Generated: {dt.datetime.now().isoformat(sep=' ', timespec='seconds')}\n")
    lines.append(f"Root: `{root}`\n")
    lines.append("\n")
    lines.append("## How to read this\n")
    lines.append("- This report is a technical scan for branding/metadata references (not legal advice).\n")
    lines.append("- Keep copyright/license notices intact unless a lawyer tells you otherwise.\n")
    lines.append("- High priority items before going public are usually README badges/links, SCM URLs, Maven coordinates, and any Bonita trademarks in product naming.\n")
    lines.append("\n")

    tag_totals: dict[str, int] = {tag: 0 for tag, _ in PATTERNS}
    repos_with_hits: list[str] = []

    for repo_dir in repos:
        repo_name = repo_dir.name
        has_license, has_notice = license_notice_status(repo_dir)

        repo_matches: list[Match] = []
        for path in iter_repo_files(repo_dir):
            repo_matches.extend(scan_file(path))

        if repo_matches:
            repos_with_hits.append(repo_name)

        by_tag: dict[str, list[Match]] = {}
        for m in repo_matches:
            by_tag.setdefault(m.tag, []).append(m)
            tag_totals[m.tag] = tag_totals.get(m.tag, 0) + 1

        lines.append(f"## {repo_name}\n")
        lines.append(f"- LICENSE at repo root: {'yes' if has_license else 'NO'}\n")
        lines.append(f"- NOTICE at repo root: {'yes' if has_notice else 'no'}\n")
        lines.append(f"- Total matches: {len(repo_matches)}\n")

        if not repo_matches:
            lines.append("\n")
            continue

        lines.append("\n")
        for tag, _pattern in PATTERNS:
            hits = by_tag.get(tag, [])
            if not hits:
                continue
            lines.append(f"### {tag} ({len(hits)})\n")
            sample = hits[: args.max_per_tag]
            for m in sample:
                rel = m.file.relative_to(repo_dir)
                safe_line = m.line
                if len(safe_line) > 200:
                    safe_line = safe_line[:200] + "…"
                lines.append(f"- {rel}:{m.line_no}: {safe_line}\n")
            if len(hits) > len(sample):
                lines.append(f"- … (+{len(hits) - len(sample)} more)\n")
            lines.append("\n")

        lines.append("\n")

    lines.append("## Totals\n")
    lines.append(f"Repos scanned: {len(repos)}\n")
    lines.append(f"Repos with matches: {len(repos_with_hits)}\n")
    lines.append("\n")
    for tag, total in sorted(tag_totals.items(), key=lambda kv: (-kv[1], kv[0])):
        lines.append(f"- {tag}: {total}\n")

    report_path.write_text("".join(lines), encoding="utf-8")
    print(str(report_path))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
