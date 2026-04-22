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

symlink_vscode_file() {
    local file_name="$1"
    local source_file="$SCRIPT_DIR/User/$file_name"
    local target_file="$VSCODE_USER_DIR/$file_name"

    if [[ -L "$target_file" ]]; then
        if [[ "$(readlink "$target_file")" == "$source_file" ]]; then
            echo "VSCode $file_name already symlinked."
            return
        fi

        echo "Replacing existing symlink for VSCode $file_name..."
        rm "$target_file"
    elif [[ -e "$target_file" ]]; then
        local backup_file="$target_file.backup.$(date +%Y%m%d-%H%M%S)"
        echo "Backing up existing VSCode $file_name to $backup_file..."
        mv "$target_file" "$backup_file"
    fi

    echo "Creating symlink for VSCode $file_name..."
    ln -s "$source_file" "$target_file"
}

# Create VSCode User directory if it doesn't exist
mkdir -p "$VSCODE_USER_DIR"

symlink_vscode_file "settings.json"
symlink_vscode_file "keybindings.json"

echo "VSCode user files symlinked successfully!"
