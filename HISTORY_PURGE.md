# Purging `vs2026/.vs/` from repository history

This document explains safe steps to remove IDE state (binary `.vs` workspace files) from repository history. Use these only if the files were pushed publicly and you need them removed from the remote history.

IMPORTANT: History rewriting is destructive. Coordinate with all contributors before following these steps. They will require a forced push and will invalidate existing clones.

Recommended approach (git-filter-repo)

1. Install git-filter-repo (recommended over BFG):

   - Windows (use pip):

```powershell
python -m pip install --user git-filter-repo
```

1. Clone a fresh copy of the repository (local repo will be removed in this process):

```powershell
git clone --mirror https://github.com/1LUC1D4710N/my-dev-setup.git
cd my-dev-setup.git
```

1. Run git-filter-repo to remove `vs2026/.vs/` (and optionally other sensitive paths):

```powershell
git filter-repo --invert-paths --paths vs2026/.vs/
```

1. Verify the repo locally (examine commits, run `git log --stat` and `git fsck`).

1. Force-push the rewritten history to GitHub (coordinate with contributors):

```powershell
git push --force --mirror https://github.com/1LUC1D4710N/my-dev-setup.git
```

1. Notify contributors: everyone must reclone or run a recommended recovery procedure.

Alternative: BFG Repo Cleaner

- BFG is simpler but less flexible. If you prefer BFG, follow its documentation and use `bfg --delete-folders .vs` on a mirrored clone.

Safety notes

- Keep a local backup of the original mirrored clone before pushing.
- Run tests and smoke checks after the history rewrite.
- If you need help executing these steps, I can prepare a script or run them with your approval.
