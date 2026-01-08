#!/bin/bash

# Exit on error
set -e

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "This script is only for macOS. Skipping VSCode settings installation."
    exit 0
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"

# Create VSCode User directory if it doesn't exist
mkdir -p "$VSCODE_USER_DIR"

# Backup existing settings.json if it exists and is not already a symlink
if [[ -e "$VSCODE_USER_DIR/settings.json" ]] && [[ ! -L "$VSCODE_USER_DIR/settings.json" ]]; then
    BACKUP_FILE="$VSCODE_USER_DIR/settings.json.backup.$(date +%Y%m%d-%H%M%S)"
    echo "Backing up existing settings.json to $BACKUP_FILE..."
    mv "$VSCODE_USER_DIR/settings.json" "$BACKUP_FILE"
elif [[ -L "$VSCODE_USER_DIR/settings.json" ]]; then
    echo "Removing existing symlink..."
    rm "$VSCODE_USER_DIR/settings.json"
fi

# Create symlink
echo "Creating symlink for VSCode settings.json..."
ln -s "$SCRIPT_DIR/User/settings.json" "$VSCODE_USER_DIR/settings.json"

echo "VSCode settings.json symlinked successfully!"
