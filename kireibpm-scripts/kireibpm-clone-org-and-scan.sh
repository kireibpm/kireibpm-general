#!/usr/bin/env bash

if [ -z "${BASH_VERSION-}" ]; then
  echo "This script requires bash. Re-running with bash..." >&2
  exec /usr/bin/env bash "$0" "$@"
fi

set -euo pipefail

ORG="${1:-kireibpm}"
DEST_DIR="${2:-./${ORG}-org}"   # where repos will be cloned
LIMIT="${LIMIT:-1000}"

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing required command: $1" >&2
    exit 1
  }
}

need_cmd git
need_cmd gh
need_cmd grep

if ! gh auth status -h github.com >/dev/null 2>&1; then
  echo "gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

mkdir -p "$DEST_DIR"

echo "Listing repositories for org: $ORG"

# Exclude archived repos by default; they tend to be noisy for workflow audits.
repos=()
while IFS= read -r repo; do
  [ -n "$repo" ] || continue
  repos+=("$repo")
done < <(
  gh repo list "$ORG" \
    --limit "$LIMIT" \
    --json name,isArchived \
    -q '.[] | select(.isArchived == false) | .name'
)

echo "Found ${#repos[@]} non-archived repositories."
echo "Cloning/updating into: $DEST_DIR"
echo

for repo in "${repos[@]}"; do
  slug="$ORG/$repo"
  repo_dir="$DEST_DIR/$repo"

  if [ -d "$repo_dir/.git" ]; then
    echo "[update] $slug"
    # Keep origin consistent in case auth method changes.
    git -C "$repo_dir" remote set-url origin "https://github.com/${slug}.git" >/dev/null 2>&1 || true

    # Shallow refresh of refs. If the repo isn't shallow, this still works.
    git -C "$repo_dir" fetch --prune --depth 1 origin || git -C "$repo_dir" fetch --prune origin
    git -C "$repo_dir" pull --ff-only --depth 1 2>/dev/null || git -C "$repo_dir" pull --ff-only 2>/dev/null || true
  else
    echo "[clone]  $slug"
    # Depth 1 is enough for workflow scanning and keeps this fast.
    gh repo clone "$slug" "$repo_dir" -- --depth 1
  fi
done

echo
echo "Scanning workflows (.github/workflows) for likely problem sources..."

ts="$(date +%Y%m%d-%H%M%S)"
report_file="$DEST_DIR/_workflow-scan_${ORG}_${ts}.txt"

codeql_auto_enabled=()
codeql_manual_only=()
purge_artifacts=()

for repo_dir in "$DEST_DIR"/*; do
  [ -d "$repo_dir/.git" ] || continue
  repo="$(basename "$repo_dir")"
  wf_dir="$repo_dir/.github/workflows"
  [ -d "$wf_dir" ] || continue

  repo_has_codeql=0
  repo_codeql_auto=0
  repo_has_purge=0

  for wf in "$wf_dir"/*.yml "$wf_dir"/*.yaml; do
    [ -f "$wf" ] || continue

    # CodeQL detection (file-level)
    if grep -q -E 'github/codeql-action|name:[[:space:]]*"?CodeQL"?' "$wf" 2>/dev/null; then
      repo_has_codeql=1
      # Auto-enabled if push/pull_request/schedule triggers exist as non-comment lines IN THIS FILE.
      if grep -q -E '^[[:space:]]+(push|pull_request|schedule):' "$wf" 2>/dev/null; then
        repo_codeql_auto=1
      fi
    fi

    # Purge artifacts workflow detection (file-level)
    if grep -q -E 'kolpav/purge-artifacts-action|purge-artifacts-action|Delete old artifacts' "$wf" 2>/dev/null; then
      repo_has_purge=1
    fi
  done

  if [ "$repo_has_codeql" -eq 1 ]; then
    if [ "$repo_codeql_auto" -eq 1 ]; then
      codeql_auto_enabled+=("$repo")
    else
      codeql_manual_only+=("$repo")
    fi
  fi

  if [ "$repo_has_purge" -eq 1 ]; then
    purge_artifacts+=("$repo")
  fi
done

{
  # macOS ships Bash 3.2; with `set -u` it can be picky about empty arrays.
  # Disable nounset just for report rendering.
  set +u
  echo "Workflow scan report for org: $ORG"
  echo "Generated: $(date)"
  echo "Root dir: $DEST_DIR"
  echo
  echo "CODEQL_AUTO_ENABLED (${#codeql_auto_enabled[@]}):"
  for r in "${codeql_auto_enabled[@]}"; do echo "- $r"; done
  echo
  echo "CODEQL_MANUAL_ONLY (${#codeql_manual_only[@]}):"
  for r in "${codeql_manual_only[@]}"; do echo "- $r"; done
  echo
  echo "PURGE_ARTIFACTS_WORKFLOWS (${#purge_artifacts[@]}):"
  for r in "${purge_artifacts[@]}"; do echo "- $r"; done
  set -u
} > "$report_file"

echo "Done. Report written to: $report_file"
