#!/usr/bin/env bash

if [ -z "${BASH_VERSION-}" ]; then
  echo "This script requires bash. Re-running with bash..." >&2
  exec /usr/bin/env bash "$0" "$@"
fi

set -euo pipefail

# Mirrors selected Bonitasoft repositories into your GitHub account
# under new names prefixed with kireibpm-.
#
# Requirements:
# - git
# - GitHub CLI: https://cli.github.com/  (command: gh)
# - Authenticated gh session: gh auth login
#
# Safety:
# - This script creates repositories under TARGET_OWNER.
# - It pushes all refs (branches + tags) with --mirror.

UPSTREAM_OWNER="bonitasoft"
TARGET_OWNER="kireibpm"
VISIBILITY="private"   # private|public

# Optional: when TARGET_OWNER is an organization, grant this team access on repo creation.
# Leave empty to skip.
TARGET_TEAM_SLUG="maintainers"

# KireiBPM unified versioning (your own releases).
# We keep all upstream tags as-is, and additionally create a KireiBPM tag pointing
# to the selected upstream baseline tag for each repo.
KIREI_VERSION="1.0.0"
KIREI_TAG_PREFIX="kireibpm-"   # results in tags like kireibpm-1.0.0

# Default baseline tag used when a repo entry doesn't specify its own tag.
DEFAULT_BASE_TAG="10.1.0"

# Release branch created in each mirrored repo (points to that repo's baseline tag).
# Uses KireiBPM unified version naming.
RELEASE_BRANCH="release/${KIREI_VERSION}"

# Map upstream repo name -> your target repo name -> baseline tag
# Format: upstream:target:tag
# Adjust this list to match exactly what you want to maintain.
REPOS=(
  "bonita-engine:kireibpm-engine:10.1.0"
  # Artifacts model is a core build dependency of kireibpm-engine (via gradle/libs.versions.toml).
  # Keep this tag aligned with bonitaArtifactsModelVersion to avoid release/1.0.0 pointing to an incompatible HEAD.
  "bonita-artifacts-model:kireibpm-artifacts-model:1.0.0"
  "bonita-portal-js:kireibpm-portal-js:10.1.0"
  "bonita-ui-designer:kireibpm-ui-designer:1.19.0"
  "bonita-web-pages:kireibpm-web-pages:10.1.0"
  "bonita-application-directory:kireibpm-application-directory:10.1.0"
  "bonita-user-application:kireibpm-user-application:10.1.0"
  "bonita-admin-application:kireibpm-admin-application:10.1.0"
  "bonita-super-admin-application:kireibpm-super-admin-application:10.1.0"
  "bonita-distrib:kireibpm-distrib:10.1.0"
  "bonita-data-repository:kireibpm-data-repository:1.0.0"
  "bonita-studio:kireibpm-studio:10.1.0"
)

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing required command: $1" >&2
    exit 1
  }
}

need_cmd git
need_cmd gh

# Make sure gh is authenticated
if ! gh auth status -h github.com >/dev/null 2>&1; then
  echo "gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

WORKDIR="$(mktemp -d)"
trap 'rm -rf "$WORKDIR"' EXIT

echo "Workdir: $WORKDIR"

echo "Target owner: $TARGET_OWNER ($VISIBILITY)"
echo "Upstream owner: $UPSTREAM_OWNER"
echo "KireiBPM version: $KIREI_VERSION"
echo "KireiBPM tag prefix: $KIREI_TAG_PREFIX"
echo "Default upstream baseline tag: $DEFAULT_BASE_TAG"
echo

for pair in "${REPOS[@]}"; do
  upstream_repo="${pair%%:*}"
  remainder="${pair#*:}"
  target_repo="${remainder%%:*}"
  base_tag="${pair##*:}"

  # Allow format upstream:target (fallback to DEFAULT_BASE_TAG)
  if [[ "$pair" != *:*:* ]]; then
    base_tag="$DEFAULT_BASE_TAG"
  fi

  upstream_url="https://github.com/${UPSTREAM_OWNER}/${upstream_repo}.git"
  target_slug="${TARGET_OWNER}/${target_repo}"
  target_url="https://github.com/${target_slug}.git"

  echo "============================================================"
  echo "Upstream: ${UPSTREAM_OWNER}/${upstream_repo}"
  echo "Target:   ${target_slug}"

  # Create target repo if it doesn't exist
  if gh repo view "$target_slug" >/dev/null 2>&1; then
    echo "Target repo exists: $target_slug"
  else
    echo "Creating target repo: $target_slug"
    if [ -n "${TARGET_TEAM_SLUG}" ] && gh api "/orgs/${TARGET_OWNER}" >/dev/null 2>&1; then
      gh repo create "$target_slug" --"$VISIBILITY" --team "${TARGET_TEAM_SLUG}"
    else
      gh repo create "$target_slug" --"$VISIBILITY"
    fi
  fi

  repo_dir="$WORKDIR/${upstream_repo}.git"

  echo "Cloning mirror: $upstream_url"
  git clone --mirror "$upstream_url" "$repo_dir"

  pushd "$repo_dir" >/dev/null

  # GitHub exposes pull request refs under refs/pull/*; they are "hidden" and cannot be pushed.
  # When cloning with --mirror, those refs can be fetched and would then break `git push --mirror`.
  pr_refs="$(git for-each-ref --format='%(refname)' refs/pull)"
  if [ -n "$pr_refs" ]; then
    echo "Removing GitHub PR refs (refs/pull/*) from local mirror"
    while IFS= read -r ref; do
      [ -n "$ref" ] || continue
      git update-ref -d "$ref"
    done <<EOF
$pr_refs
EOF
  fi

  # Push everything (all branches + tags)
  echo "Pushing mirror to target: $target_url"
  git remote remove origin >/dev/null 2>&1 || true
  git remote add target "$target_url"
  git push --mirror target

  # Create a stable release branch pointing to this repo's baseline tag (if present)
  if git show-ref --tags --verify "refs/tags/${base_tag}" >/dev/null 2>&1; then
    baseline_commit="$(git rev-parse "${base_tag}^{commit}" 2>/dev/null || git rev-parse "${base_tag}^{}" )"

    if git ls-remote --exit-code --heads target "refs/heads/${RELEASE_BRANCH}" >/dev/null 2>&1; then
      echo "Release branch already exists on remote: ${RELEASE_BRANCH} (skipping)"
    else
      echo "Creating ${RELEASE_BRANCH} from tag ${base_tag} (${baseline_commit})"
      git update-ref "refs/heads/${RELEASE_BRANCH}" "${baseline_commit}"
      git push target "refs/heads/${RELEASE_BRANCH}:refs/heads/${RELEASE_BRANCH}"
    fi

    # Ensure GitHub can detect the repo license (it scans the default branch).
    # Setting default branch also makes the repo landing page consistent.
    gh repo edit "$target_slug" --default-branch "${RELEASE_BRANCH}" >/dev/null

    # Create a unified KireiBPM tag for this repo (without touching upstream tags)
    kirei_tag="${KIREI_TAG_PREFIX}${KIREI_VERSION}"
    if git ls-remote --exit-code --tags target "refs/tags/${kirei_tag}" >/dev/null 2>&1; then
      echo "KireiBPM tag already exists on remote: ${kirei_tag} (skipping)"
    else
      echo "Creating KireiBPM tag ${kirei_tag} -> ${base_tag} (${baseline_commit})"
      git update-ref "refs/tags/${kirei_tag}" "${baseline_commit}"
      git push target "refs/tags/${kirei_tag}:refs/tags/${kirei_tag}"
    fi
  else
    echo "WARNING: tag ${base_tag} not found in ${upstream_repo}; skipping ${RELEASE_BRANCH}" >&2
  fi

  # Keep upstream remote for future comparison (optional)
  git remote add upstream "$upstream_url" >/dev/null 2>&1 || true

  popd >/dev/null

  echo "Done: $target_slug"
  echo

done

echo "All done."

echo "Next suggestions:"
echo "- Add a top-level docs repo (e.g., kireibpm-docs) and link each module README to it."
echo "- Enable Dependabot/Renovate + CI in each repo before large dependency upgrades."