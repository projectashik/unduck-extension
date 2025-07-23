#!/bin/bash

# Build script for Unduck Search Engine Extension

set -e  # Exit on any error

echo "Building Unduck Search Engine Extension..."

# Get version from manifest
VERSION=$(grep '"version"' manifest.json | sed 's/.*"version": "\(.*\)".*/\1/')
echo "Version: $VERSION"

# Create build directory
mkdir -p build

# Clean previous builds
rm -rf build/chrome build/firefox
rm -f build/*.zip

# Build for Chrome/Chromium browsers
echo "Building for Chrome/Chromium browsers..."
mkdir -p build/chrome
cp manifest.json build/chrome/
cp popup.html build/chrome/
cp -r icons build/chrome/

# Create Chrome ZIP
cd build/chrome
if [ -n "$VERSION" ]; then
    zip -r "../unduck-extension-chrome-v${VERSION}.zip" .
else
    zip -r "../unduck-extension-chrome.zip" .
fi
cd ../..

# Build for Firefox
echo "Building for Firefox..."
mkdir -p build/firefox
cp manifest-firefox.json build/firefox/manifest.json
cp popup.html build/firefox/
cp -r icons build/firefox/

# Create Firefox ZIP
cd build/firefox
if [ -n "$VERSION" ]; then
    zip -r "../unduck-extension-firefox-v${VERSION}.zip" .
else
    zip -r "../unduck-extension-firefox.zip" .
fi
cd ../..

echo "Build complete!"
if [ -n "$VERSION" ]; then
    echo "Chrome/Chromium package: build/unduck-extension-chrome-v${VERSION}.zip"
    echo "Firefox package: build/unduck-extension-firefox-v${VERSION}.zip"
else
    echo "Chrome/Chromium package: build/unduck-extension-chrome.zip"
    echo "Firefox package: build/unduck-extension-firefox.zip"
fi
echo ""
echo "Installation instructions:"
echo "1. For Chrome/Edge/Opera/Vivaldi: Load unpacked extension from build/chrome/ folder"
echo "2. For Firefox: Load temporary add-on using build/firefox/manifest.json"
