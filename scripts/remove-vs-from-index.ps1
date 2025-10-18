<#
Remove vs2026/.vs from git index and commit a .gitignore update.

Usage: Run from repository root in PowerShell:
  .\scripts\remove-vs-from-index.ps1

This script will:
- Ensure .gitignore contains 'vs2026/.vs/' (it will add if missing)
- Run: git rm -r --cached vs2026/.vs
- Stage .gitignore and commit with a standard message

It WILL NOT push. Review the commit locally and push when ready.
#>

Set-StrictMode -Version Latest

$gitRoot = (git rev-parse --show-toplevel) 2>$null
if (-not $gitRoot) {
    Write-Error "Not inside a git repository. Run this from the repo root."
    exit 1
}

Push-Location $gitRoot
try {
    $gitignore = Join-Path $gitRoot '.gitignore'
    $ignoreEntry = "`n# Ignore Visual Studio workspace state`nvs2026/.vs/`n"

    $content = Get-Content $gitignore -Raw
    if ($content -notmatch "vs2026/\.vs") {
        Add-Content -Path $gitignore -Value $ignoreEntry
        Write-Host "Added 'vs2026/.vs/' to .gitignore"
    } else {
        Write-Host ".gitignore already ignores vs2026/.vs/"
    }

    git rm -r --cached vs2026/.vs | Out-Null
    git add .gitignore
    git commit -m "chore: remove Visual Studio workspace state from repository and ignore it"
    Write-Host "Committed removal of vs2026/.vs from index. Review the commit, then push when ready."
} finally {
    Pop-Location
}
