# PowerShell Script to Setup Python Environment
# Usage: .\setup-python-env.ps1

Write-Host "`n╔══════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   Python Environment Setup                          ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════════╝`n" -ForegroundColor Cyan

# Check Python installation
Write-Host "Checking Python installation..." -ForegroundColor Yellow
if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Python is not installed or not in PATH" -ForegroundColor Red
    Write-Host "   Please install Python from: https://www.python.org/downloads/" -ForegroundColor Yellow
    exit 1
}

$pythonVersion = python --version
Write-Host "✓ $pythonVersion found" -ForegroundColor Green

# Check pip
if (-not (Get-Command pip -ErrorAction SilentlyContinue)) {
    Write-Host "❌ pip is not installed" -ForegroundColor Red
    exit 1
}

$pipVersion = pip --version
Write-Host "✓ pip found" -ForegroundColor Green

# Upgrade pip
Write-Host "`nUpgrading pip..." -ForegroundColor Yellow
python -m pip install --upgrade pip
Write-Host "✓ pip upgraded" -ForegroundColor Green

# Install setuptools and wheel
Write-Host "`nInstalling setuptools and wheel..." -ForegroundColor Yellow
pip install --upgrade setuptools wheel
Write-Host "✓ Build tools installed" -ForegroundColor Green

# Install requirements
$requirementsFile = Join-Path $PSScriptRoot "requirements.txt"

if (Test-Path $requirementsFile) {
    Write-Host "`nInstalling Python packages from requirements.txt..." -ForegroundColor Yellow
    Write-Host "(This may take several minutes)`n" -ForegroundColor Cyan
    
    pip install -r $requirementsFile
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✓ All packages installed successfully" -ForegroundColor Green
    } else {
        Write-Host "`n⚠ Some packages may have failed to install" -ForegroundColor Yellow
    }
} else {
    Write-Host "⚠ requirements.txt not found, skipping package installation" -ForegroundColor Yellow
}

# Verify key packages
Write-Host "`nVerifying key packages..." -ForegroundColor Yellow
$keyPackages = @("numpy", "pandas", "matplotlib", "scikit-learn", "jupyter", "pytest")
$allGood = $true

foreach ($package in $keyPackages) {
    try {
        python -c "import $package" 2>$null
        if ($LASTEXITCODE -eq 0) {
            Write-Host "  ✓ $package" -ForegroundColor Green
        } else {
            Write-Host "  ✗ $package" -ForegroundColor Red
            $allGood = $false
        }
    } catch {
        Write-Host "  ✗ $package" -ForegroundColor Red
        $allGood = $false
    }
}

Write-Host "`n╔══════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   Setup Complete                                    ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════════╝" -ForegroundColor Cyan

if ($allGood) {
    Write-Host "`n✓ Python environment is ready to use!" -ForegroundColor Green
} else {
    Write-Host "`n⚠ Some packages failed verification. Check the output above." -ForegroundColor Yellow
}

Write-Host "`nQuick start commands:" -ForegroundColor Cyan
Write-Host "  jupyter notebook    # Start Jupyter" -ForegroundColor White
Write-Host "  ipython            # Interactive Python" -ForegroundColor White
Write-Host "  python --version   # Check version" -ForegroundColor White
Write-Host ""
