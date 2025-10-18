<#
.\scripts\smoke-test.ps1 - Lightweight smoke test for this repository

Run locally to validate environment after editing install scripts or dependencies.
Exits with non-zero code on failure.

Options:
  -Quick  : Run quick checks only (no Python imports)
  -Verbose: Write additional info
#>

param(
    [switch]$Quick,
    [switch]$Verbose
)

function Write-Ok($msg){ Write-Host "[OK]    $msg" -ForegroundColor Green }
function Write-Warn($msg){ Write-Host "[WARN]  $msg" -ForegroundColor Yellow }
function Write-Err($msg){ Write-Host "[ERROR] $msg" -ForegroundColor Red }

$failed = $false

Write-Host "Running smoke tests for repository: $(Get-Location)" -ForegroundColor Cyan

# 1) Check for Python
if (Get-Command python -ErrorAction SilentlyContinue) {
    $pyver = & python --version 2>&1
    Write-Ok "Python found: $pyver"
} else {
    Write-Err "Python not found in PATH"
    $failed = $true
}

# 2) Check for pip
if (Get-Command pip -ErrorAction SilentlyContinue) {
    $pipver = & pip --version 2>&1
    Write-Ok "pip found: $pipver"
} else {
    Write-Err "pip not found in PATH"
    $failed = $true
}

# 3) Check for code (VS Code CLI) - optional
if (Get-Command code -ErrorAction SilentlyContinue) {
    $codever = & code --version 2>&1 | Select-Object -First 1
    Write-Ok "VS Code CLI found: $codever"
} else {
    Write-Warn "VS Code CLI ('code') not found in PATH. install-vscode-extensions.ps1 will fail without it."
}

if (-not $Quick) {
    # 4) Try importing a small set of critical Python packages (fast imports only)
    $packages = @('numpy','pandas','sklearn','jupyter')
    foreach ($pkg in $packages) {
        Write-Host "Checking Python import: $pkg..." -NoNewline
        try {
            & python -c "import $pkg" 2>$null
            if ($LASTEXITCODE -eq 0) {
                Write-Ok "Imported $pkg"
            } else {
                Write-Err "Failed to import $pkg"
                $failed = $true
            }
        } catch {
            Write-Err "Failed to import $pkg"
            $failed = $true
        }
    }
} else {
    Write-Host "Quick mode: skipping Python package imports" -ForegroundColor Yellow
}

if ($failed) {
    Write-Err "One or more smoke tests failed"
    exit 1
} else {
    Write-Ok "Smoke tests passed"
    exit 0
}
