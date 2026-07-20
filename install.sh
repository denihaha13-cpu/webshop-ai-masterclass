#!/bin/bash
# Webshop AI Masterclass — One-Command Installer
# Installs the guided masterclass + 6 ecom skills for Claude Code
# Created by Leon — @lio · @liogpt

set -e

REPO="novusordos666/webshop-ai-masterclass"
REPO_URL="https://github.com/${REPO}.git"
INSTALL_DIR="$HOME/.webshop-masterclass"
SKILL_DIR="$HOME/.claude/commands/webshop"

echo ""
echo "  WEBSHOP AI MASTERCLASS"
echo "  ======================"
echo ""

# -- Add common Claude install locations to PATH for this session --
for dir in "$HOME/.local/bin" "$HOME/.claude/local/bin" "/usr/local/bin"; do
    if [ -d "$dir" ] && [[ ":$PATH:" != *":$dir:"* ]]; then
        export PATH="$dir:$PATH"
    fi
done

# -- Check for Claude Code --
if ! command -v claude &> /dev/null; then
    echo "  Claude Code is nog niet geinstalleerd."
    echo ""
    echo "  Plak dit eerst in je terminal:"
    echo ""
    echo "    curl -fsSL https://claude.ai/install.sh | bash"
    echo ""
    echo "  Draai daarna deze installer opnieuw:"
    echo ""
    echo "    curl -fsSL https://raw.githubusercontent.com/${REPO}/main/install.sh | bash"
    echo ""
    echo "  ---------------------------------------------"
    echo "  Hulp nodig? Volg @liogpt"
    echo "  ---------------------------------------------"
    echo ""
    exit 0
fi

echo "  OK  Claude Code gevonden"
echo ""

# -- Check for git --
if ! command -v git &> /dev/null; then
    echo "  Git is nog niet geinstalleerd."
    echo "  Installeer via: https://git-scm.com/downloads"
    echo "  Draai daarna deze installer opnieuw."
    echo ""
    exit 0
fi

# -- Clone or update the repo --
if [ -d "$INSTALL_DIR" ]; then
    echo "  Bestaande installatie updaten..."
    cd "$INSTALL_DIR"
    git pull --quiet origin main
    echo "  Ge-update naar laatste versie."
else
    echo "  Masterclass downloaden..."
    git clone --quiet "$REPO_URL" "$INSTALL_DIR"
    echo "  Gedownload."
fi

echo ""

# -- Install skills to Claude Code --
echo "  Skills installeren..."
mkdir -p "$SKILL_DIR"

SKILL_COUNT=0
for skill_file in "$INSTALL_DIR/skills/"*.md; do
    if [ -f "$skill_file" ]; then
        cp "$skill_file" "$SKILL_DIR/"
        SKILL_NAME=$(basename "$skill_file" .md)
        echo "    OK  /webshop:${SKILL_NAME}"
        SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
done

if [ "$SKILL_COUNT" -eq 0 ]; then
    echo "    Geen skills gevonden."
else
    echo "  ${SKILL_COUNT} skill(s) geinstalleerd."
fi

echo ""
echo "  Klaar!"
echo ""
echo "  Geinstalleerd:"
echo "  |-- Skills  -> ~/.claude/commands/webshop/"
echo "  |-- Bestanden -> ~/.webshop-masterclass/"
echo ""
echo "  Updaten? Draai dit commando gewoon opnieuw."
echo ""
echo "  ---------------------------------------------"
echo "  Boek een 187N Agency Scan: https://calendly.com/lio-187n/187n-agency-scan-t-clone"
echo "  Volledige cursus: https://lio.circle.so"
echo "  Volg @liogpt voor dagelijkse AI-tutorials"
echo "  ---------------------------------------------"
echo ""
echo "  KLAAR! Type nu:"
echo ""
echo "    claude"
echo ""
echo "  En daarna:  /webshop:masterclass"
echo ""
