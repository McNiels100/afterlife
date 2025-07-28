#!/bin/bash

# main.sh - Entry point for Afterlife Arch Linux setup script
# This script runs all bash scripts found in the 'scripts' directory.

if [[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]]; then
    echo "Afterlife is running..."

    sudo pacman -Syu --noconfirm

    source ./scripts/01-gnome-extensions.sh
fi

echo "All scripts in 'scripts' directory have been executed."
