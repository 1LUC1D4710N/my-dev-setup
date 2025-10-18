
# Agent guidance (short)

This repository is a Windows-first developer environment provisioning repo. Keep responses short and actionable.

Key facts

- Primary OS: Windows (PowerShell examples).
- Python: 3.14.x; `requirements.txt` contains 125+ packages.
- IDEs: VS Code and Visual Studio 2026 (`vs2026/` holds VS-specific exports).

When editing

- Prefer PowerShell idioms (`$PSScriptRoot`, `$LASTEXITCODE`, `Write-Host`).
- Avoid changing files in `vs2026/.vs/` or adding secrets to `.vssettings` exports.
- For dependency changes: update `requirements.txt` and include a verification snippet (e.g. `python -c "import numpy,pandas,sklearn; print('OK')"`).

Workflows to reference

- Quick local checks: `.\scripts\smoke-test.ps1` (supports `-Quick`).
- PR checks: `.github/workflows/smoke-test.yml` (Quick mode).
- Deep verification: `.github/workflows/deep-verify.yml` (installs requirements in venv; runs on `main` / manual).

If you modify install scripts, run them locally and paste the verification output in your PR.
