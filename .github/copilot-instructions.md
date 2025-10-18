## How to help in this repository

This repository is a personal, Windows-focused developer environment provisioning repo. Keep instructions concise and focused on actionable changes an engineer or AI agent can make.

High-level facts to assume when editing or generating code:
- Primary OS: Windows (PowerShell is the default shell in workspace examples).
- Python version targeted: 3.14.x; packages listed in `requirements.txt` (125+ packages).
- Two IDEs: Visual Studio Code and Visual Studio 2026 (files under `vs2026/` hold VS-specific configuration).

Primary goals for suggestions and edits
- Preserve existing scripts and documentation structure. Edits should avoid breaking the PowerShell scripts: `setup-python-env.ps1`, `install-vscode-extensions.ps1`, `copy-to-vs2026.ps1`.
- Prefer small, reversible changes (create new files rather than large rewrites unless requested).
- When modifying dependency lists, update `requirements.txt` and mention verification steps (e.g. run `setup-python-env.ps1` or `pip install -r requirements.txt`).

Where to look for context
- `README.md` — canonical overview, quick-start commands and verification steps.
- `docs/` — contains focused guides: `CHAT.md`, `TOOLS.md`, `EXTENSIONS.md`.
- `vscode-extensions.txt` — canonical extension list used by `install-vscode-extensions.ps1`.
- `vs2026/` — Visual Studio export instructions, settings and notes. Treat `.vssettings` exports as user-owned data; do not suggest committing secrets.

Project-specific conventions and patterns
- Scripts are PowerShell-first. Use PowerShell idioms (e.g., `$PSScriptRoot`, `Write-Host`, `$LASTEXITCODE`) when adding or editing scripts.
- Use the repository root for global scripts and docs. Per-IDE configuration lives in `vs2026/`.
- When adding instructions or examples, show PowerShell command blocks with the correct escaping (Windows paths and backslashes).

Common developer workflows to reference
- Quick start (from `README.md`):
  1. Clone repo
  2. Run `.\install-vscode-extensions.ps1`
  3. Run `.\setup-python-env.ps1` or `pip install -r requirements.txt`

- VS/VSCode sync approaches (see `docs/` and `vs2026/EXPORT-INSTRUCTIONS.md`): prefer recommending local-folder usage or GitHub sync; the `copy-to-vs2026.ps1` script is available for copy workflows.

Tests, verification and safety gates
- There are no automated unit tests in the repository. For any change that touches install scripts or requirements, verify by running the related script locally and checking that key verification commands succeed (Python import checks in `setup-python-env.ps1`).
- When updating `requirements.txt`, include a short verification snippet showing `python -c "import numpy, pandas, sklearn; print('OK')"` or running the `setup-python-env.ps1` script and quoting observed outputs.

Examples to follow
- If adding a helper script to install a new tool, copy the style used in `install-vscode-extensions.ps1` (read list file, loop, call CLI, check `$LASTEXITCODE`, show counts of installed/failed).
- If documenting a new extension, add its ID to `vscode-extensions.txt` and include a short PowerShell example:

```powershell
# Add extension ID to the file, then run installer
Add-Content -Path .\vscode-extensions.txt -Value "publisher.extension-id"
.\install-vscode-extensions.ps1
```

Editing guidelines for documentation
- Keep descriptions terse. Prefer concrete commands and file references (e.g., "update `requirements.txt` and run `.\setup-python-env.ps1`").
- When describing where to place settings for VS 2026, point to `vs2026/` and `vs2026/EXPORT-INSTRUCTIONS.md`.

What not to do
- Do not add or suggest storing secrets, tokens, or credentials in the repo or `vs2026/` exports.
- Do not change Visual Studio binary or workspace files under `vs2026/.vs/` — these are IDE state and should not be committed.

If you need more context
- Open `README.md` and `docs/CHAT.md`, `docs/TOOLS.md`, `docs/EXTENSIONS.md` first. If making a behavioural change to a script, run it locally and paste the verification output in your PR description.

When ready, ask for feedback on any unclear sections and which verification steps you'd like automated.

CI note — verification tiers
- Quick PR checks: `.github/workflows/smoke-test.yml` runs `scripts/smoke-test.ps1 -Quick` on pull requests touching scripts, docs, `requirements.txt` and `vscode-extensions.txt`. This validates PATH-level tools only and is fast.
- Deep verification: `.github/workflows/deep-verify.yml` (runs on pushes to `main` and via manual dispatch) creates a venv, installs `requirements.txt`, and runs the full `scripts/smoke-test.ps1`. Use this when dependencies change or before releases. Expect longer runtime and more runner usage.

If you'd like different behaviour (e.g., running deep verification for trusted contributors only, or splitting the install into cached steps), note it in your PR and I can update the workflows.
