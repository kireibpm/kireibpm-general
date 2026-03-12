# KireiBPM Branching and Release Policy

## Purpose

This document defines the default branching, pull request, versioning, tagging, and release model for KireiBPM repositories.

## Core Principles

1. Use the same workflow across all KireiBPM repositories.
2. Keep `master` always releasable.
3. Release from `master` only.
4. Use GitHub Issues as the default work tracker.
5. Keep one shared platform line for `MAJOR.MINOR`.
6. Allow `PATCH` to increase independently per repository or per published package.

## Primary Branch

KireiBPM uses `master` as the primary branch.

Rules:

- `master` contains the current development state.
- `master` should remain stable enough to release at any time.
- Direct pushes to `master` should be avoided in normal work.
- Changes should normally arrive through pull requests.

## Working Branches

Short-lived branches should be used for all normal work.

### Feature branches

Use:

- `feature/<issue-number>-<short-description>`

Examples:

- `feature/123-migrate-contract-model`
- `feature/241-add-npm-publish-workflow`

### Fix branches

Use:

- `fix/<issue-number>-<short-description>`

Examples:

- `fix/317-scoped-package-tagging`
- `fix/322-crowdin-pr-token`

Use `fix/*` for both normal bug fixes and urgent production fixes. KireiBPM does not use a separate `hotfix/*` branch type.

## GitHub Issues

KireiBPM should use GitHub Issues as the default work tracker.

Rules:

- Create an Issue for every planned feature, bug, or technical task.
- Put the Issue number in the branch name.
- Reference the Issue in the pull request.

## Pull Request Policy

Recommended rules:

- Open a pull request for every feature or fix branch.
- Merge into `master` only after required checks pass.
- Use `Squash and merge` as the default merge strategy.
- Keep pull requests focused on one topic.
- Enable automatic deletion of the source branch after merge.

### Merge Strategy Choice

Available GitHub merge strategies:

- `Create a merge commit`: keeps the full branch history, but makes `master` noisier.
- `Squash and merge`: collapses the branch into one clean commit on `master`.
- `Rebase and merge`: keeps a linear history, but preserves all branch commits individually.

Default recommendation for KireiBPM:

- use `Squash and merge`

Reason:

- branches are short-lived,
- source branches are deleted after merge,
- one PR usually represents one logical change,
- `master` stays clean and readable.

## Versioning Policy

KireiBPM should use one shared platform line for `MAJOR.MINOR` across repositories.

That means:

- all repositories in `1.0.x` belong to the same compatibility line,
- moving from `1.0` to `1.1` is a platform-level decision,
- `PATCH` may increase independently in each repository.

Examples:

- `kireibpm-engine` `1.0.3`
- `kireibpm-ui-designer` `1.0.7`
- `kireibpm-web-components` `1.0.12`

Interpretation:

- `MAJOR.MINOR` identifies the common KireiBPM platform line,
- `PATCH` identifies the local release level of a repository or package.

### Semantic Versioning Meaning

- `MAJOR`: breaking platform compatibility change
- `MINOR`: new platform line with coordinated compatibility expectations
- `PATCH`: repository-level or package-level fixes and incremental updates

## Tagging Policy

Tags represent released versions.

### Standard repositories

For repositories that produce one main release artifact, use:

- `vX.Y.Z`

Examples:

- `v1.0.0`
- `v1.0.4`

### Monorepos with independently published packages

For monorepos such as `kireibpm-web-components`, use per-package tags:

- `<package-name>@X.Y.Z`

Examples:

- `search-box@1.0.8`
- `pagination-selector@1.0.5`
- `query-selector@1.0.6`

## Release Policy

Releases should be created only from `master`.

Recommended flow:

1. Work happens on `feature/*` or `fix/*`.
2. Changes are reviewed and merged into `master`.
3. `master` becomes the source of truth for release.
4. A release workflow or manual release process creates the version bump and tag.
5. Published artifacts are produced from the tagged state.

## Manual vs Automatic Releases

Default recommendation:

- keep releases manual,
- keep publishing manual,
- automate validation and packaging,
- avoid fully automatic publishing on every push.

This is especially appropriate for repositories that publish external artifacts or are still stabilizing migration and branding work.

## Release Branches

Do not use long-lived `develop` branches by default.

Do not use `release/*` branches unless there is a real stabilization need. In the normal case, release directly from `master`.

## Recommended Standard for KireiBPM

Unless a repository has a strong reason to differ, use the following standard:

- primary branch: `master`
- working branches: `feature/<issue-number>-<short-description>`, `fix/<issue-number>-<short-description>`
- work tracking: GitHub Issues
- release source: `master`
- merge strategy: `Squash and merge`
- standard repo tags: `vX.Y.Z`
- monorepo package tags: `<package-name>@X.Y.Z`
- shared platform line: common `MAJOR.MINOR`
- local release level: independent `PATCH`

## GitHub Repository Settings

Recommended GitHub settings:

- protect `master`
- require pull request before merge
- require required CI checks to pass
- restrict force-pushes
- automatically delete head branches after merge
- enable `Squash and merge`
- disable other merge types unless there is a specific reason to allow them

## Practical Examples

### Example A: normal repository change

1. Create Issue `#120`.
2. Create `feature/120-rebrand-studio-menu`.
3. Open a pull request to `master`.
4. Merge with `Squash and merge`.
5. The source branch is deleted automatically.
6. Create release tag `v1.0.4` from `master`.

### Example B: fix branch

1. Create Issue `#121`.
2. Create `fix/121-login-null-pointer`.
3. Fix and validate.
4. Merge to `master` with `Squash and merge`.
5. Create release tag `v1.0.5` from `master`.

### Example C: monorepo package release

1. Merge package changes into `master`.
2. Run the package release workflow manually.
3. Tag the package as `search-box@1.0.9`.
4. Publish that package to npm.

## Anti-Patterns to Avoid

- introducing `develop` without a real integration need
- introducing `hotfix/*` when `fix/*` already covers urgent fixes
- forcing one shared `PATCH` number across all repositories
- releasing from feature or fix branches
- keeping long-lived topic branches open for too long

## Summary

The default KireiBPM model is:

- `master` as the primary branch
- short-lived `feature/*` and `fix/*` branches with Issue numbers
- GitHub Issues as the default tracker
- `Squash and merge` for pull requests
- automatic deletion of source branches after merge
- releases and tags created from `master`
- one shared `MAJOR.MINOR` platform line
- independent `PATCH` versioning per repository or package