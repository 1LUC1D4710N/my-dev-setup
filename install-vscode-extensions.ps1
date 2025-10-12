# PowerShell Script to Install VS Code Extensions
# Usage: .\install-vscode-extensions.ps1

Write-Host "`n╔══════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   VS Code Extensions Installer                      ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════════╝`n" -ForegroundColor Cyan

# Check if VS Code is installed
if (-not (Get-Command code -ErrorAction SilentlyContinue)) {
    Write-Host "❌ VS Code is not installed or not in PATH" -ForegroundColor Red
    Write-Host "   Please install VS Code from: https://code.visualstudio.com/" -ForegroundColor Yellow
    exit 1
}

Write-Host "✓ VS Code found" -ForegroundColor Green
Write-Host "`nInstalling extensions...`n" -ForegroundColor Yellow

$extensionsFile = Join-Path $PSScriptRoot "vscode-extensions.txt"

if (-not (Test-Path $extensionsFile)) {
    Write-Host "❌ vscode-extensions.txt not found!" -ForegroundColor Red
    exit 1
}

$extensions = Get-Content $extensionsFile | Where-Object { 
    $_ -notmatch '^#' -and $_.Trim() -ne '' 
}

$total = $extensions.Count
$current = 0
$installed = 0
$failed = 0

foreach ($extension in $extensions) {
    $current++
    Write-Host "[$current/$total] Installing: $extension" -ForegroundColor Cyan
    
    $result = code --install-extension $extension 2>&1
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  ✓ Installed successfully" -ForegroundColor Green
        $installed++
    } else {
        Write-Host "  ✗ Failed to install" -ForegroundColor Red
        $failed++
    }
}

Write-Host "`n╔══════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   Installation Complete                             ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host "`n✓ Successfully installed: $installed" -ForegroundColor Green
if ($failed -gt 0) {
    Write-Host "✗ Failed: $failed" -ForegroundColor Red
}
Write-Host "`nPlease restart VS Code to activate all extensions.`n" -ForegroundColor Yellow
