#!/usr/bin/env bash
set -euo pipefail

FROM_OWNER="xirad1"
ORG="kireibpm"
TEAM_SLUG="maintainers"
TEAM_PERMISSION="admin" # pull|triage|push|maintain|admin

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "Missing required command: $1" >&2
    exit 1
  }
}

need_cmd gh
need_cmd git

if ! gh auth status -h github.com >/dev/null 2>&1; then
  echo "gh is not authenticated. Run: gh auth login" >&2
  exit 1
fi

# Verify org exists
if ! gh api -H 'Accept: application/vnd.github+json' "/orgs/${ORG}" >/dev/null 2>&1; then
  echo "Organization does not exist or is not accessible: ${ORG}" >&2
  echo "Create it first: https://github.com/account/organizations/new" >&2
  exit 1
fi

# Ensure the team exists (idempotent)
if ! gh api -H 'Accept: application/vnd.github+json' "/orgs/${ORG}/teams/${TEAM_SLUG}" >/dev/null 2>&1; then
  echo "Creating team ${ORG}/${TEAM_SLUG}"
  gh api -H 'Accept: application/vnd.github+json' -X POST "/orgs/${ORG}/teams" \
    -f name="${TEAM_SLUG}" \
    -f privacy=closed \
    >/dev/null
else
  echo "Team exists: ${ORG}/${TEAM_SLUG}"
fi

# List source repos to move
repos=( $(gh api -H 'Accept: application/vnd.github+json' '/user/repos?per_page=100&affiliation=owner&visibility=all&sort=full_name' --paginate --jq '.[].name' | grep '^kireibpm-' | sort) )

if [ ${#repos[@]} -eq 0 ]; then
  echo "No repos found matching kireibpm-* under authenticated user." >&2
  exit 1
fi

echo "Will transfer ${#repos[@]} repos from ${FROM_OWNER} -> ${ORG}"

for repo in "${repos[@]}"; do
  src="${FROM_OWNER}/${repo}"
  dst="${ORG}/${repo}"

  # Skip if already moved
  if gh api -H 'Accept: application/vnd.github+json' "/repos/${dst}" >/dev/null 2>&1; then
    echo "Already in org: ${dst}"
  else
    echo "Transferring ${src} -> ${dst}"
    # Transfer request
    gh api -H 'Accept: application/vnd.github+json' -X POST "/repos/${src}/transfer" \
      -f new_owner="${ORG}" \
      >/dev/null

    # Wait until new repo exists (transfer is async)
    for i in {1..60}; do
      if gh api -H 'Accept: application/vnd.github+json' "/repos/${dst}" >/dev/null 2>&1; then
        break
      fi
      sleep 2
    done

    if ! gh api -H 'Accept: application/vnd.github+json' "/repos/${dst}" >/dev/null 2>&1; then
      echo "WARNING: ${dst} not visible yet; transfer may still be in progress." >&2
    fi
  fi

  echo "Granting team ${ORG}/${TEAM_SLUG} permission=${TEAM_PERMISSION} on ${dst}"
  gh api -H 'Accept: application/vnd.github+json' -X PUT "/orgs/${ORG}/teams/${TEAM_SLUG}/repos/${ORG}/${repo}" \
    -f permission="${TEAM_PERMISSION}" \
    >/dev/null || true

done

echo "Done. Open: https://github.com/orgs/${ORG}/repositories"
