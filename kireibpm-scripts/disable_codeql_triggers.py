#!/usr/bin/env python3

from __future__ import annotations

import json
import re
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any


TOP_LEVEL_KEY_RE = re.compile(r"^[A-Za-z0-9_.-]+:\s*(#.*)?$")


@dataclass
class Summary:
    push_branches: list[str]
    pr_branches: list[str]
    crons: list[str]

    def to_dict(self) -> dict[str, Any]:
        return {
            "push_branches": self.push_branches,
            "pull_request_branches": self.pr_branches,
            "crons": self.crons,
        }


def _find_on_block(lines: list[str]) -> tuple[int, int]:
    on_index = -1
    for idx, line in enumerate(lines):
        if re.match(r"^on:\s*(#.*)?$", line):
            on_index = idx
            break
    if on_index == -1:
        raise ValueError("No top-level 'on:' block found")

    end = len(lines)
    for idx in range(on_index + 1, len(lines)):
        line = lines[idx]
        if not line.strip():
            continue
        if line.startswith(" ") or line.startswith("\t"):
            continue
        if TOP_LEVEL_KEY_RE.match(line):
            end = idx
            break
    return on_index, end


def _is_auto_trigger_enabled(on_body_lines: list[str]) -> bool:
    for line in on_body_lines:
        if line.lstrip().startswith("#"):
            continue
        if re.match(r"^[ \t]+(push|pull_request|schedule):\s*(#.*)?$", line):
            return True
    return False


def _is_manual_only(on_body_lines: list[str]) -> bool:
    has_workflow_dispatch = False
    has_auto = False
    for line in on_body_lines:
        stripped = line.lstrip()
        if stripped.startswith("#"):
            continue
        if re.match(r"^[ \t]+workflow_dispatch:\s*(#.*)?$", line):
            has_workflow_dispatch = True
        if re.match(r"^[ \t]+(push|pull_request|schedule):\s*(#.*)?$", line):
            has_auto = True
    return has_workflow_dispatch and not has_auto


def _summarize_on_body(on_body_lines: list[str]) -> Summary:
    push_branches: list[str] = []
    pr_branches: list[str] = []
    crons: list[str] = []

    # Very lightweight parsing; we just want the human-facing values.
    current: str | None = None
    for raw in on_body_lines:
        line = raw.strip()
        if not line or line.startswith("#"):
            continue

        if re.match(r"^(push|pull_request|schedule):\s*(#.*)?$", line):
            current = line.split(":", 1)[0]
            continue

        # branches: [ "master" ]
        m = re.match(r"^branches:\s*\[(.*)\]\s*(#.*)?$", line)
        if m and current in {"push", "pull_request"}:
            branches = m.group(1).strip()
            if branches:
                if current == "push":
                    push_branches.append(branches)
                else:
                    pr_branches.append(branches)
            continue

        # - cron: '23 17 * * 0'
        m = re.match(r"^-\s*cron:\s*['\"]([^'\"]+)['\"]\s*(#.*)?$", line)
        if m and current == "schedule":
            crons.append(m.group(1))

    return Summary(push_branches=push_branches, pr_branches=pr_branches, crons=crons)


def disable_codeql_triggers(path: Path) -> dict[str, Any]:
    content = path.read_text(encoding="utf-8")
    lines = content.splitlines(keepends=True)

    on_idx, on_end = _find_on_block(lines)
    on_body = lines[on_idx + 1 : on_end]

    summary = _summarize_on_body(on_body)
    already_manual_only = _is_manual_only(on_body)
    auto_enabled = _is_auto_trigger_enabled(on_body)

    if already_manual_only:
        return {
            "file": str(path),
            "changed": False,
            "reason": "already_manual_only",
            "summary": summary.to_dict(),
        }

    # Replace the entire on: body; preserve old triggers as commented lines.
    new_on: list[str] = []
    new_on.append("on:\n")
    new_on.append("  workflow_dispatch:\n")
    new_on.append("  # Previous automatic triggers (temporarily disabled):\n")
    for raw in on_body:
        # Remove the first two spaces if present (typical indentation under on:)
        stripped = raw
        if stripped.startswith("  "):
            stripped = stripped[2:]
        stripped = stripped.rstrip("\n")
        if stripped == "":
            new_on.append("  #\n")
        else:
            new_on.append(f"  # {stripped}\n")

    new_lines = lines[:on_idx] + new_on + lines[on_end:]
    new_content = "".join(new_lines)

    if new_content != content:
        path.write_text(new_content, encoding="utf-8")
        return {
            "file": str(path),
            "changed": True,
            "reason": "auto_disabled" if auto_enabled else "on_rewritten",
            "summary": summary.to_dict(),
        }

    return {
        "file": str(path),
        "changed": False,
        "reason": "no_diff",
        "summary": summary.to_dict(),
    }


def main(argv: list[str]) -> int:
    if len(argv) != 2:
        print("Usage: disable_codeql_triggers.py <workflow-file>", file=sys.stderr)
        return 2

    path = Path(argv[1])
    if not path.exists():
        print(f"File not found: {path}", file=sys.stderr)
        return 2

    result = disable_codeql_triggers(path)
    print(json.dumps(result, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
