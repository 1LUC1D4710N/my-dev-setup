
# PR verification checklist

Please run the quick verification steps below when your PR touches install scripts, dependencies, or extension lists.

- [ ] Run the local smoke test: `.\scripts\smoke-test.ps1` (or run without `-Quick` for deeper checks)
- [ ] If you modified `vscode-extensions.txt`, run `.\install-vscode-extensions.ps1` locally and include a short note about any install failures
- [ ] If you modified `requirements.txt`, run `.\setup-python-env.ps1` or `pip install -r requirements.txt` locally and paste any verification output (for example: `python -c "import numpy,pandas,sklearn; print('OK')"`)

Notes:

- The repo provides `scripts/smoke-test.ps1` which performs quick environment checks. In CI we run it in `-Quick` mode to validate the environment without long installs.
- Replace paths above with your local path if different.
