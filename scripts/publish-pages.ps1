# Publish local Horizon reports to GitHub Pages.
# Usage: powershell -ExecutionPolicy Bypass -File scripts\publish-pages.ps1 "optional commit message"
# After pushing docs/** changes, the "Deploy docs to GitHub Pages" workflow
# redeploys the site to the gh-pages branch automatically.

$ErrorActionPreference = "Stop"
Set-Location (Split-Path $PSScriptRoot -Parent)

$message = if ($args.Count -gt 0) { $args[0] } else { "Publish local reports: $(Get-Date -Format 'yyyy-MM-dd HH:mm')" }

# _posts content is gitignored by default; force-add generated reports
$posts = Get-ChildItem "docs\_posts" -Filter *.md -ErrorAction SilentlyContinue
if (-not $posts) {
    Write-Host "No reports found in docs\_posts. Run Horizon first: docker compose run --rm horizon" -ForegroundColor Yellow
    exit 1
}

git add docs
git commit -m $message
if ($LASTEXITCODE -eq 0) {
    git push origin main
    Write-Host "`nPushed. The Deploy workflow is publishing to GitHub Pages..." -ForegroundColor Green
    Write-Host "Site: https://rudlejame.github.io/pro/" -ForegroundColor Cyan
} else {
    Write-Host "Nothing new to commit." -ForegroundColor Yellow
}
