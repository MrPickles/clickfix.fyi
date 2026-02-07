# ClickFix.fyi Educational Demo Script
# This is a SAFE demonstration script - no malware here!

# Clear screen for better presentation
Clear-Host

Write-Host ""
Write-Host " [!] This is a SAFE demonstration script from ClickFix.fyi" -ForegroundColor Yellow
Write-Host ""
Write-Host "If this were a real ClickFix attack, malware would now be:"
Write-Host "  * Stealing your browser passwords" -ForegroundColor Red
Write-Host "  * Copying your cryptocurrency wallets" -ForegroundColor Red
Write-Host "  * Harvesting your session cookies" -ForegroundColor Red
Write-Host "  * Installing persistent backdoors" -ForegroundColor Red
Write-Host ""
Write-Host " [OK] But this is just an educational demo. You're safe!" -ForegroundColor Green
Write-Host ""
Write-Host " [#] Remember: NEVER copy and run commands from websites you don't trust." -ForegroundColor Cyan
Write-Host ""

Write-Host "Press any key to close..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
