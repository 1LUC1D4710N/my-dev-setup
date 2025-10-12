# PowerShell Script to Copy Setup Files for Visual Studio 2026
# This allows VS 2026 to access your development setup without Git

param(
    [string]$Destination = "$env:USERPROFILE\Documents\VisualStudio2026Setup"
)

Write-Host "`n╔══════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   Copy Dev Setup to VS 2026 Location               ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════════╝`n" -ForegroundColor Cyan

# Get current directory (repository root)
$Source = $PSScriptRoot

Write-Host "📂 Source: $Source" -ForegroundColor Yellow
Write-Host "📂 Destination: $Destination`n" -ForegroundColor Yellow

# Create destination directory
if (-not (Test-Path $Destination)) {
    New-Item -ItemType Directory -Path $Destination -Force | Out-Null
    Write-Host "✓ Created destination directory" -ForegroundColor Green
} else {
    Write-Host "✓ Destination directory exists" -ForegroundColor Green
}

# Files to copy
$filesToCopy = @(
    "README.md",
    "requirements.txt",
    "vscode-extensions.txt",
    "vs2026\README.md",
    "vs2026\EXPORT-INSTRUCTIONS.md"
)

Write-Host "`nCopying files...`n" -ForegroundColor Yellow

$copied = 0
$failed = 0

foreach ($file in $filesToCopy) {
    $sourcePath = Join-Path $Source $file
    $destPath = Join-Path $Destination $file
    
    # Create subdirectories if needed
    $destDir = Split-Path $destPath -Parent
    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    }
    
    if (Test-Path $sourcePath) {
        Copy-Item -Path $sourcePath -Destination $destPath -Force
        Write-Host "  ✓ Copied: $file" -ForegroundColor Green
        $copied++
    } else {
        Write-Host "  ✗ Missing: $file" -ForegroundColor Red
        $failed++
    }
}

Write-Host "`n╔══════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║   Copy Complete                                     ║" -ForegroundColor Cyan
Write-Host "╚══════════════════════════════════════════════════════╝`n" -ForegroundColor Cyan

Write-Host "✓ Copied: $copied files" -ForegroundColor Green
if ($failed -gt 0) {
    Write-Host "✗ Failed: $failed files" -ForegroundColor Red
}

Write-Host "`n📁 Files are now at: $Destination" -ForegroundColor Cyan
Write-Host "`n💡 Visual Studio 2026 can now access these files!" -ForegroundColor Yellow
Write-Host "`nNext steps:" -ForegroundColor Yellow
Write-Host "  1. Open Visual Studio 2026" -ForegroundColor White
Write-Host "  2. File → Open → Folder" -ForegroundColor White
Write-Host "  3. Navigate to: $Destination" -ForegroundColor Cyan
Write-Host "  4. Or use Terminal in VS 2026 to run setup scripts`n" -ForegroundColor White
