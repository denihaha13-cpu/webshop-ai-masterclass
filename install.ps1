# Webshop AI Masterclass — One-Command Installer (Windows)
# Installs the guided masterclass + 6 ecom skills for Claude Code
# Created by Leon — @lio · @liogpt

$REPO = "novusordos666/webshop-ai-masterclass"
$REPO_URL = "https://github.com/$REPO.git"
$INSTALL_DIR = "$env:USERPROFILE\.webshop-masterclass"
$SKILL_DIR = "$env:USERPROFILE\.claude\commands\webshop"

Write-Host ""
Write-Host "  WEBSHOP AI MASTERCLASS"
Write-Host "  ======================"
Write-Host ""

# -- Check for Claude Code --
$claudePath = Get-Command claude -ErrorAction SilentlyContinue
if (-not $claudePath) {
    $defaultPath = "$env:USERPROFILE\.local\bin"
    if (Test-Path "$defaultPath\claude.exe") {
        $env:PATH = "$defaultPath;$env:PATH"
        Write-Host "  OK  Claude Code gevonden ($defaultPath)"
        Write-Host "  (Toegevoegd aan PATH voor deze sessie)"
        Write-Host ""
    } else {
        Write-Host "  Claude Code is nog niet geinstalleerd."
        Write-Host ""
        Write-Host "  Plak dit eerst in PowerShell:"
        Write-Host ""
        Write-Host "    irm https://claude.ai/install.ps1 | iex"
        Write-Host ""
        Write-Host "  Draai daarna deze installer opnieuw:"
        Write-Host ""
        Write-Host "    irm https://raw.githubusercontent.com/$REPO/main/install.ps1 | iex"
        Write-Host ""
        Write-Host "  ---------------------------------------------"
        Write-Host "  Hulp nodig? Volg @liogpt"
        Write-Host "  ---------------------------------------------"
        Write-Host ""
        return
    }
} else {
    Write-Host "  OK  Claude Code gevonden"
}
Write-Host ""

# -- Check for git --
$gitPath = Get-Command git -ErrorAction SilentlyContinue
if (-not $gitPath) {
    Write-Host "  Git is nog niet geinstalleerd."
    Write-Host "  Download via: https://git-scm.com/download/win"
    Write-Host "  Draai daarna deze installer opnieuw."
    Write-Host ""
    return
}

# -- Clone or update the repo --
try {
    if (Test-Path $INSTALL_DIR) {
        Write-Host "  Bestaande installatie updaten..."
        Push-Location $INSTALL_DIR
        git pull --quiet origin main 2>$null
        Pop-Location
        Write-Host "  Ge-update naar laatste versie."
    } else {
        Write-Host "  Masterclass downloaden..."
        git clone --quiet $REPO_URL $INSTALL_DIR 2>$null
        Write-Host "  Gedownload."
    }
} catch {
    Write-Host "  Fout bij downloaden. Check je internet en probeer opnieuw."
    Write-Host ""
    return
}
Write-Host ""

# -- Install skills to Claude Code --
Write-Host "  Skills installeren..."
if (-not (Test-Path $SKILL_DIR)) {
    New-Item -ItemType Directory -Path $SKILL_DIR -Force | Out-Null
}

$SKILL_COUNT = 0
$skillFiles = Get-ChildItem -Path "$INSTALL_DIR\skills\*.md" -ErrorAction SilentlyContinue
foreach ($skill in $skillFiles) {
    Copy-Item $skill.FullName -Destination $SKILL_DIR -Force
    $skillName = $skill.BaseName
    Write-Host "    OK  /webshop:$skillName"
    $SKILL_COUNT++
}

if ($SKILL_COUNT -eq 0) {
    Write-Host "    Geen skills gevonden."
} else {
    Write-Host "  $SKILL_COUNT skill(s) geinstalleerd."
}
Write-Host ""

Write-Host "  Klaar!"
Write-Host ""
Write-Host "  Geinstalleerd:"
Write-Host "  +-- Skills -> ~\.claude\commands\webshop\"
Write-Host "  +-- Bestanden -> ~\.webshop-masterclass\"
Write-Host ""
Write-Host "  Updaten? Draai dit commando gewoon opnieuw."
Write-Host ""
Write-Host "  ---------------------------------------------"
Write-Host "  Boek een 187N Agency Scan: https://calendly.com/lio-187n/187n-agency-scan-t-clone"
Write-Host "  Volledige cursus: https://lio.circle.so"
Write-Host "  Volg @liogpt voor dagelijkse AI-tutorials"
Write-Host "  ---------------------------------------------"
Write-Host ""
Write-Host "  KLAAR! Type nu:"
Write-Host ""
Write-Host "    claude"
Write-Host ""
Write-Host "  En daarna:  /webshop:masterclass"
Write-Host ""
