#!/bin/bash

# main.sh - Entry point for Afterlife Arch Linux setup script
# This script runs all bash scripts found in the 'scripts' directory.

if [[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]]; then
    echo "Afterlife is running..."

    source ./scripts/01-install.sh
    source ./scripts/02-set-gnome-keybindings.sh
    source ./scripts/03-set-gnome-settings.sh
fi

echo "All scripts in 'scripts' directory have been executed."
