#!/bin/bash

# main.sh - Entry point for Afterlife Arch Linux setup script
# This script runs all bash scripts found in the 'scripts' directory.

# Change to the directory where main.sh is located (Afterlife root)
cd "$(dirname "$0")" || exit 1

# Check if the scripts directory exists
if [ ! -d "scripts" ]; then
    echo "Error: 'scripts' directory not found."
    exit 1
fi

# Loop through all .sh files in the scripts directory and execute them
for script in scripts/*.sh; do
    if [ -f "$script" ] && [ -x "$script" ]; then
        echo "Running $script..."
        ./"$script"  # Run the script (assumes they are executable; use 'bash "$script"' if not)
    elif [ -f "$script" ]; then
        echo "Running $script (non-executable)..."
        bash "$script"
    fi
done

echo "All scripts in 'scripts' directory have been executed."
