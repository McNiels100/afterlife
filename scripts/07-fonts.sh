#!/bin/bash

cd /tmp

# Get the latest release JSON from GitHub API
LATEST_RELEASE=$(curl -s https://api.github.com/repos/zed-industries/zed-fonts/releases/latest)

# Extract the tag name (version) from the JSON
TAG_NAME=$(echo "$LATEST_RELEASE" | grep '"tag_name":' | sed -E 's/.*"tag_name": "([^"]+)".*/\1/')

# Construct the download URL for the latest release tarball
DOWNLOAD_URL="https://github.com/zed-industries/zed-fonts/archive/refs/tags/$TAG_NAME.tar.gz"

# Download the latest release using wget
wget "$DOWNLOAD_URL" -O "zed-mono-$TAG_NAME.zip"

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Successfully downloaded zed-fonts-$TAG_NAME.tar.gz"
else
    echo "Failed to download zed-fonts-$TAG_NAME.tar.gz"
    exit 1
fi

unzip zed-mono-$TAG_NAME.zip -d zed-mono-$TAG_NAME.zip
