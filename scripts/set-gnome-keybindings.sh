#!/bin/bash

# Define the file path (relative to script location, based on your directory structure)
LIST_FILE="config/gnome/keybindings.list"

# Check if the file exists
if [ ! -f "$LIST_FILE" ]; then
  echo "Error: File $LIST_FILE not found!"
  exit 1
fi

# Loop over each line in the file
while IFS= read -r line; do
  # Skip empty lines or comments
  if [[ -z "$line" || "$line" =~ ^# ]]; then
    continue
  fi

  # Parse key and value (assuming format like "key:value")
  key="${line%%:*}"  # Everything before the first ':'
  value="${line#*:}" # Everything after the first ':'

  # Trim any leading/trailing whitespace (optional but good)
  key="${key// /}"
  value="${value// /}"

  # Set the keybinding (update schema if needed; wm is common for window manager keys)
  gsettings set org.gnome.desktop.wm.keybindings "$key" "$value" || {
    echo "Error setting keybinding for $key"
  }
done < "$LIST_FILE"

echo "Gnome keybindings applied successfully."
