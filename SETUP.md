# Complete Setup & Quick Reference (canonical)

This is the single canonical setup and verification document for this repository. It replaces the older multi-page guides. If you need the historic, more detailed pages they are archived under `docs/archived/` and `vs2026/archived/`.

Overview

1. Purpose: reproducible Windows development environment for Python 3.14, Data Science, and cross-IDE workflows (VS Code + Visual Studio 2026).

1. Key scripts:

  - `install-vscode-extensions.ps1` — installs extensions listed in `vscode-extensions.txt`.
  - `setup-python-env.ps1` — prepares Python environment and installs `requirements.txt` packages.
  - `copy-to-vs2026.ps1` — optional helper to copy repo content for VS 2026 workflows.
  - `scripts/smoke-test.ps1` — local verification script (supports `-Quick`).

Quick start (15–30 minutes)

1. Clone the repository:

```powershell
git clone https://github.com/1LUC1D4710N/my-dev-setup.git
cd my-dev-setup
```

1. Install VS Code extensions:

```powershell
.\install-vscode-extensions.ps1
```

1. Setup Python environment and install core packages (creates a working environment):

```powershell
.\setup-python-env.ps1
```

1. Quick verification (local):

```powershell
.\scripts\smoke-test.ps1       # full checks (imports several packages)
.\scripts\smoke-test.ps1 -Quick # quick PATH/CLI checks only
```

What this repo installs and configures
  - Python 3.14.x (targeted)
  - 125+ Python packages in `requirements.txt` (data science, Jupyter, linting, testing)
  - 31 VS Code extensions (AI, Python, Data Science, Quality tools)
  - Optional Visual Studio 2026 integration (see `vs2026/`)

Repository layout (canonical files)
  - `README.md` — short pointer to this canonical file.
  - `SETUP.md` — this file (canonical).
  - `vscode-extensions.txt` — extension list used by the installer.
  - `requirements.txt` — pinned packages for the Python environment.
  - `scripts/` — helper scripts including `smoke-test.ps1` and `remove-vs-from-index.ps1`.
  - `vs2026/` — Visual Studio 2026 settings and exports (user-owned data; archived copies below).

Verification & CI
  - Quick PR checks: `.github/workflows/smoke-test.yml` runs `scripts/smoke-test.ps1 -Quick` on PRs touching scripts, docs, `requirements.txt` and `vscode-extensions.txt`.
  - Deep verification: `.github/workflows/deep-verify.yml` (runs on pushes to `main` and via manual dispatch) creates a venv, installs `requirements.txt`, and runs the full `scripts/smoke-test.ps1`.

Security & privacy
  - DO NOT commit secrets or personal data. `.gitignore` contains patterns to exclude `.pem`, `.env`, `token.*`, and similar files.
  - Visual Studio exported state (in `vs2026/.vs/`) is ignored and should never be committed. If such files were committed, use `scripts/remove-vs-from-index.ps1` to remove them from the index and archive the repository history if needed.

If you want to contribute
  - Follow the PR checklist in `.github/PULL_REQUEST_TEMPLATE.md` (run smoke-test locally, include verification output when editing `requirements.txt` or `vscode-extensions.txt`).
- For changes that alter dependencies, include a short verification snippet and expected impact on CI.

Contact
  - For questions about the setup, open an issue or a PR. Keep personal data out of issues.
