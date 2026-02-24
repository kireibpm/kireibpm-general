#!/usr/bin/env bash
set -euo pipefail

if [ -z "${BASH_VERSION-}" ]; then
  echo "This script requires bash. Re-running with bash..." >&2
  exec /usr/bin/env bash "$0" "$@"
fi

# Mirrors selected Bonitasoft add-on repositories into the kireibpm organization.
#
# IMPORTANT:
# - This uses `git push --mirror` which is destructive for the target repo.
# - By default, it will NOT touch repos that already exist in the org (to avoid overwriting your changes).

UPSTREAM_OWNER="bonitasoft"
TARGET_OWNER="kireibpm"
VISIBILITY="private"   # private|public
TARGET_TEAM_SLUG="maintainers"   # org team to grant access on creation (optional)

# Versioning assumptions for KireiBPM
KIREI_VERSION="1.0.0"
RELEASE_BRANCH="release/${KIREI_VERSION}"
KIREI_TAG_PREFIX="kireibpm-"   # results in tags like kireibpm-1.0.0

# Safety: do not overwrite existing repos unless explicitly enabled.
MIRROR_EXISTING_REPOS="false"  # true|false

# License safety gate (skip upstream repos with unclear/unexpected SPDX)
REQUIRE_ALLOWED_LICENSES="true"  # true|false
ALLOWED_LICENSES=(
  "GPL-2.0"
  "LGPL-2.1"
  "MIT"
  "Apache-2.0"
  "MPL-2.0"
  "BSD-2-Clause"
  "GPL-3.0"
)

REPOS=(
  "action-release-connector"
  "bonita-actorfilter-archetype"
  "bonita-actorfilter-custom-user-info"
  "bonita-actorfilter-initiator"
  "bonita-actorfilter-initiator-manager"
  "bonita-actorfilter-same-task-user"
  "bonita-actorfilter-single-user"
  "bonita-actorfilter-user-manager"
  "bonita-connector-ai"
  "bonita-connector-archetype"
  "bonita-connector-cmis"
  "bonita-connector-database"
  "bonita-connector-document-converter"
  "bonita-connector-document-templating"
  "bonita-connector-email"
  "bonita-connector-googlecalendar-V3"
  "bonita-connector-groovy"
  "bonita-connector-ldap"
  "bonita-connector-rest"
  "bonita-connector-salesforce"
  "bonita-connector-sap"
  "bonita-connector-shell-script"
  "bonita-connector-slack"
  "bonita-connector-twitter"
  "bonita-connector-uipath"
  "bonita-connector-webservice"
  "bonita-java-client"
  "bonita-openapi"
  "bonita-page-authorization-rules"
  "bonita-platform-releases"
  "bonita-process-model"
  "bonita-project-maven-plugin"
  "bonita-rest-api-extension-archetype"
  "bonita-theme-archetype"
  "bonita-userfilters"
  "bonita-web-devtools"
  "bonita-widget-contrib"
  "rest-api-extension-user-information-example"
  "widget-builder"
)

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing required command: $1" >&2
    exit 1
  }
}

need_cmd git
need_cmd gh

if ! gh auth status -h github.com >/dev/null 2>&1; then
  echo "gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

is_allowed_license() {
  local spdx_id="$1"
  for allowed in "${ALLOWED_LICENSES[@]}"; do
    if [[ "$spdx_id" == "$allowed" ]]; then
      return 0
    fi
  done
  return 1
}

target_name_for() {
  local upstream_repo="$1"
  if [[ "$upstream_repo" == bonita-* ]]; then
    echo "kireibpm-${upstream_repo#bonita-}"
  else
    echo "kireibpm-${upstream_repo}"
  fi
}

WORKDIR="$(mktemp -d)"
trap 'rm -rf "$WORKDIR"' EXIT

echo "Workdir: $WORKDIR"
echo "Upstream owner: $UPSTREAM_OWNER"
echo "Target owner: $TARGET_OWNER ($VISIBILITY)"
echo "KireiBPM version: $KIREI_VERSION"
echo "Release branch: $RELEASE_BRANCH"
echo "KireiBPM tag: ${KIREI_TAG_PREFIX}${KIREI_VERSION}"
echo "Mirror existing repos: $MIRROR_EXISTING_REPOS"
echo

# Ensure team exists when targeting an org (best-effort)
if [ -n "$TARGET_TEAM_SLUG" ] && gh api -H 'Accept: application/vnd.github+json' "/orgs/${TARGET_OWNER}" >/dev/null 2>&1; then
  if ! gh api -H 'Accept: application/vnd.github+json' "/orgs/${TARGET_OWNER}/teams/${TARGET_TEAM_SLUG}" >/dev/null 2>&1; then
    echo "Creating team ${TARGET_OWNER}/${TARGET_TEAM_SLUG}"
    gh api -H 'Accept: application/vnd.github+json' -X POST "/orgs/${TARGET_OWNER}/teams" \
      -f name="${TARGET_TEAM_SLUG}" \
      -f privacy=closed \
      >/dev/null
  fi
fi

for upstream_repo in "${REPOS[@]}"; do
  target_repo="$(target_name_for "$upstream_repo")"
  target_slug="${TARGET_OWNER}/${target_repo}"

  echo "============================================================"
  echo "Upstream: ${UPSTREAM_OWNER}/${upstream_repo}"
  echo "Target:   ${target_slug}"

  if [[ "$REQUIRE_ALLOWED_LICENSES" == "true" ]]; then
    upstream_spdx="$(gh api -H 'Accept: application/vnd.github+json' "/repos/${UPSTREAM_OWNER}/${upstream_repo}" --jq '.license.spdx_id // ""' 2>/dev/null || true)"

    if [[ -z "$upstream_spdx" || "$upstream_spdx" == "NOASSERTION" ]]; then
      echo "WARNING: Upstream license not detected (spdx='${upstream_spdx:-<empty>}'). Skipping." >&2
      echo
      continue
    fi

    if ! is_allowed_license "$upstream_spdx"; then
      echo "WARNING: Upstream license ${upstream_spdx} not in ALLOWED_LICENSES. Skipping." >&2
      echo
      continue
    fi

    echo "Upstream license: ${upstream_spdx}"
  fi

  if gh repo view "$target_slug" >/dev/null 2>&1; then
    echo "Target repo exists: $target_slug"
    if [[ "$MIRROR_EXISTING_REPOS" != "true" ]]; then
      echo "Skipping existing repo (set MIRROR_EXISTING_REPOS=true to force mirror push)."
      echo
      continue
    fi
  else
    echo "Creating target repo: $target_slug"
    if [ -n "$TARGET_TEAM_SLUG" ] && gh api -H 'Accept: application/vnd.github+json' "/orgs/${TARGET_OWNER}" >/dev/null 2>&1; then
      gh repo create "$target_slug" --"$VISIBILITY" --team "$TARGET_TEAM_SLUG"
    else
      gh repo create "$target_slug" --"$VISIBILITY"
    fi
  fi

  upstream_url="https://github.com/${UPSTREAM_OWNER}/${upstream_repo}.git"
  target_url="https://github.com/${target_slug}.git"

  repo_dir="$WORKDIR/${upstream_repo}.git"

  echo "Cloning mirror: $upstream_url"
  git clone --mirror "$upstream_url" "$repo_dir"

  pushd "$repo_dir" >/dev/null

  # Remove GitHub PR refs (refs/pull/*) to avoid hidden-ref rejections on push.
  pr_refs="$(git for-each-ref --format='%(refname)' refs/pull || true)"
  if [ -n "$pr_refs" ]; then
    echo "Removing GitHub PR refs (refs/pull/*) from local mirror"
    while IFS= read -r ref; do
      [ -n "$ref" ] || continue
      git update-ref -d "$ref" >/dev/null 2>&1 || true
    done <<EOF
$pr_refs
EOF
  fi

  echo "Pushing mirror to target: $target_url"
  git remote remove origin >/dev/null 2>&1 || true
  git remote add target "$target_url"
  git push --mirror target

  baseline_commit="$(git rev-parse HEAD)"
  echo "Baseline commit (default branch HEAD): ${baseline_commit}"

  # Create a stable release branch pointing to baseline commit
  if git ls-remote --exit-code --heads target "refs/heads/${RELEASE_BRANCH}" >/dev/null 2>&1; then
    echo "Release branch already exists on remote: ${RELEASE_BRANCH} (skipping)"
  else
    echo "Creating ${RELEASE_BRANCH} (${baseline_commit})"
    git update-ref "refs/heads/${RELEASE_BRANCH}" "${baseline_commit}"
    git push target "refs/heads/${RELEASE_BRANCH}:refs/heads/${RELEASE_BRANCH}"
  fi

  # Set default branch to release branch (helps license detection + consistent landing page)
  gh repo edit "$target_slug" --default-branch "${RELEASE_BRANCH}" >/dev/null

  # Create a unified KireiBPM tag
  kirei_tag="${KIREI_TAG_PREFIX}${KIREI_VERSION}"
  if git ls-remote --exit-code --tags target "refs/tags/${kirei_tag}" >/dev/null 2>&1; then
    echo "KireiBPM tag already exists on remote: ${kirei_tag} (skipping)"
  else
    echo "Creating KireiBPM tag ${kirei_tag} (${baseline_commit})"
    git update-ref "refs/tags/${kirei_tag}" "${baseline_commit}"
    git push target "refs/tags/${kirei_tag}:refs/tags/${kirei_tag}"
  fi

  popd >/dev/null
  echo "Done: $target_slug"
  echo

done

echo "All done. Open: https://github.com/orgs/${TARGET_OWNER}/repositories"