# Unduck Search Engine Extension

A simple browser extension that sets [Unduck](https://unduck.link) as your default search engine for fast DuckDuckGo bang redirects.

## About

[Unduck](https://unduck.link) was created by [Theo](https://github.com/t3dotgg) - a fast, local-first "search engine" that makes DuckDuckGo's bang redirects much faster by doing the work client-side instead of server-side.

**Why I created this extension**: I have multiple browser profiles and frequently try new browsers. Every time I switch or install a new browser, I have to manually set up unduck.link as the default search engine. This extension automates that process, making it one-click to get Unduck working in any browser.

*Note: I know the current installation process is still a bit manual, but I'm planning to publish this to the Chrome Web Store and Firefox Add-ons soon to make it even easier!*

## What is Unduck?

Unduck makes DuckDuckGo's bang redirects much faster by doing the work client-side instead of server-side. Once you visit unduck.link once, all the JavaScript is cached and redirects happen instantly on your device.

## Features

- ✅ Cross-browser compatible (Chrome, Firefox, Edge, Brave, Zen, Opera, Vivaldi)
- ✅ Sets Unduck as default search engine automatically
- ✅ Fast DuckDuckGo bang redirects
- ✅ Simple and lightweight
- ✅ No data collection or tracking

## Installation & Setup Guide

### 🌐 Tested Browsers
This extension has been tested and works on:
- ✅ **Chrome** (and Chromium)
- ✅ **Brave**
- ✅ **Zen Browser**
- ✅ **Firefox**
- ✅ **Edge**
- ✅ **Opera**
- ✅ **Vivaldi** (requires manual setup)

### 🚀 Quick Start

**Easy Installation**: Download from GitHub releases and load in your browser
**For Vivaldi**: Use manual setup method below (extensions can't set default search engines)

---

### 🔧 Installation

#### Method 1: Download from Releases (Recommended)

1. **Download** the latest release from [GitHub Releases](../../releases):
   - `unduck-extension-chrome-v{version}.zip` - For Chromium browsers
   - `unduck-extension-firefox-v{version}.zip` - For Firefox/Zen

2. **Install in your browser**:

**For Chromium browsers (Chrome, Brave, Edge, Opera):**
1. Extract the downloaded ZIP file
2. Open your browser's extension page (`chrome://extensions/`, `brave://extensions/`, etc.)
3. Enable "Developer mode"
4. Click "Load unpacked" and select the extracted folder
5. Done! Unduck is now your default search engine

**For Firefox:**
1. Go to `about:debugging`
2. Click "This Firefox"
3. Click "Load Temporary Add-on"
4. Select the downloaded `unduck-extension-firefox-v{version}.zip` file directly
5. Done! Unduck is now your default search engine

**For Zen Browser:**
1. Go to `zen://debugging` (or `about:debugging`)
2. Click "This Zen" (or "This Firefox")
3. Click "Load Temporary Add-on"
4. Select the downloaded `unduck-extension-firefox-v{version}.zip` file directly
5. Done! Unduck is now your default search engine

#### Method 2: Build from Source

```bash
# Clone the repository
git clone https://github.com/your-username/unduck-extension.git
cd unduck-extension

# Build the extension
./build.sh
```

This creates:
- `build/chrome/` folder - For Chromium-based browsers
- `build/unduck-extension-firefox-v{version}.zip` - For Firefox/Zen

Then follow the same installation steps above, using the build folders instead of downloaded files.

#### Method 3: Manual Setup (For Vivaldi or if you prefer not to use extensions)

**For Vivaldi users**: Extensions cannot set default search engines in Vivaldi for security reasons, so you need to add Unduck manually:

1. **Go to** `vivaldi://settings/search/`
2. **Click** the "Add Search Engine" button (+ icon)
3. **Fill in**:
   - **Name**: `Unduck`
   - **URL**: `https://unduck.link?q=%s`
   - **Nickname**: `unduck` (optional)
4. **Click "Add"**
5. **Set as default**: Click the three dots next to Unduck → "Set as Default"

**For other browsers**: You can also manually add Unduck using the URL `https://unduck.link?q=%s` in your browser's search engine settings if you prefer not to use the extension.

### Firefox

1. Download or clone this repository
2. Rename `manifest-firefox.json` to `manifest.json` (backup the original first)
3. Open Firefox and go to `about:debugging`
4. Click "This Firefox"
5. Click "Load Temporary Add-on"
6. Select the `manifest.json` file
7. The extension will be installed temporarily

**Note:** For permanent installation in Firefox, you'll need to sign the extension through Mozilla's Add-on Developer Hub.

### Safari

Safari requires additional steps for extension development. You'll need to:
1. Convert the extension using Xcode's Safari Web Extension Converter
2. Follow Apple's Safari extension development guidelines

## How to Use Unduck

Unduck enhances your browsing experience by providing lightning-fast DuckDuckGo bang redirects. Once set up, you can use powerful search shortcuts directly from your browser's address bar.

### 🚀 What are Bang Commands?

Bang commands are shortcuts that let you search specific websites directly. Instead of going to Google, then clicking a result, you can search directly on your target site:

- `!g search term` - Search on Google
- `!w search term` - Search on Wikipedia
- `!yt search term` - Search on YouTube
- `!gh search term` - Search on GitHub
- `!so search term` - Search on Stack Overflow
- `!a search term` - Search on Amazon
- `!tw search term` - Search on Twitter/X
- `!r search term` - Search on Reddit
- `!maps search term` - Search on Google Maps

**Example**: Type `!yt funny cats` in your address bar and press Enter - you'll go directly to YouTube search results for "funny cats"!

Visit [unduck.link](https://unduck.link) to see all available bang commands (there are thousands!).

---

## ✅ Verification & Testing

After installation, verify Unduck is working:

1. **Open a new tab** or click in your address bar
2. **Type a search term** (e.g., "test search") and press Enter
3. **Check the URL** - you should see `unduck.link?q=test%20search` in the address bar
4. **Test a bang command** - try `!w cats` and verify you go directly to Wikipedia

### 🧪 Test Bang Commands

Try these to confirm everything works:
- `!g hello world` → Should go to Google search
- `!yt music` → Should go to YouTube search
- `!gh javascript` → Should go to GitHub search
- `!w wikipedia` → Should go to Wikipedia search

---

## 🔧 Troubleshooting

### Extension Not Working?

**For Chrome/Brave/Edge/Opera/Zen:**
1. Check if extension is enabled in `chrome://extensions/` (or equivalent)
2. Verify Unduck appears in search engines: Go to browser settings → Search engines
3. Make sure Unduck is set as default search engine

**For Firefox:**
1. Check if extension is loaded in `about:debugging`
2. Verify in `about:preferences#search` that Unduck is the default

**For Vivaldi:**
1. Extensions cannot set default search engines in Vivaldi for security reasons
2. You must manually set Unduck as default in `vivaldi://settings/search/`
3. Or use the manual setup method above

### Search Not Redirecting?

1. **Check the URL format**: Should be `https://unduck.link?q=%s`
2. **Clear browser cache** and restart browser
3. **Try manual setup** if extension method fails
4. **Verify unduck.link is accessible** by visiting it directly

### Bang Commands Not Working?

1. **Confirm Unduck is your default search engine**
2. **Test with simple bang**: Try `!g test` first
3. **Check for typos**: Bang commands are case-sensitive
4. **Visit unduck.link** to see the full list of available bangs

### Still Having Issues?

1. **Try the manual setup method** for your browser
2. **Check browser compatibility** - some browsers may have restrictions
3. **Report issues** on our GitHub repository with:
   - Browser name and version
   - Installation method used
   - Error messages (if any)
   - Screenshots of settings pages

## Files Structure

```
unduck-extension/
├── manifest.json           # Chrome/Chromium manifest (v3)
├── manifest-firefox.json   # Firefox manifest (v2)
├── popup.html              # Extension popup interface
├── icons/                  # Extension icons
│   ├── icon-16.png
│   ├── icon-32.png
│   ├── icon-48.png
│   └── icon-128.png
├── create-icons.html       # Icon generator tool
└── README.md              # This file
```

## Development

To modify the extension:

1. Edit the relevant files
2. Reload the extension in your browser's extension management page
3. Test the changes

### Building Locally

```bash
# Make the build script executable
chmod +x build.sh

# Build the extension
./build.sh
```

This creates:
- `build/chrome/` - Unpacked Chrome extension
- `build/firefox/` - Unpacked Firefox extension
- `build/unduck-extension-chrome-v{version}.zip` - Chrome package
- `build/unduck-extension-firefox-v{version}.zip` - Firefox package

## CI/CD Pipeline

This repository includes automated GitHub Actions workflows:

### 🔄 Automated Builds (`build-and-release.yml`)
- **Triggers**: Every push to `main` branch
- **Actions**:
  - Validates extension files
  - Builds Chrome and Firefox packages
  - Creates GitHub release with ZIP files
  - Only creates release if version tag doesn't exist

### ✅ Validation (`validate.yml`)
- **Triggers**: Pull requests and pushes to `main`
- **Actions**:
  - Validates JSON manifests
  - Checks version consistency
  - Validates required files exist
  - Tests build process
  - Validates search URL format

### 📦 Version Management (`version-bump.yml`)
- **Triggers**: Manual workflow dispatch
- **Actions**:
  - Bumps version (patch/minor/major)
  - Updates all manifest files
  - Commits and pushes changes
  - Triggers new release build

### 🏪 Store Publishing (`publish-stores.yml`)
- **Triggers**: New releases (disabled by default)
- **Actions**:
  - Publishes to Chrome Web Store
  - Publishes to Firefox Add-ons
  - Requires store credentials setup

### Using the CI/CD Pipeline

1. **Make changes** and push to a feature branch
2. **Create PR** - validation workflow runs automatically
3. **Merge to main** - build and release workflow creates new release
4. **Bump version** manually via GitHub Actions tab if needed

### Setting Up Store Publishing (Optional)

To enable automatic publishing to browser stores:

1. **Chrome Web Store**:
   - Set up Google Cloud project with Chrome Web Store API
   - Add repository secrets: `CHROME_EXTENSION_ID`, `CHROME_CLIENT_ID`, `CHROME_CLIENT_SECRET`, `CHROME_REFRESH_TOKEN`

2. **Firefox Add-ons**:
   - Create Mozilla developer account
   - Add repository secrets: `FIREFOX_EXTENSION_UUID`, `FIREFOX_API_KEY`, `FIREFOX_API_SECRET`

3. **Enable workflows** by changing `if: false` to `if: true` in `publish-stores.yml`

## License

MIT License - feel free to modify and distribute.

## Coming Soon

🚀 **Chrome Web Store** - Planning to publish soon for one-click installation
🦊 **Firefox Add-ons** - Also coming to Firefox Add-ons for easier installation

## Credits

- [Unduck](https://unduck.link) created by [Theo (T3)](https://github.com/t3dotgg)
- This extension created to automate Unduck setup across multiple browsers and profiles

## 🤖 AI-Generated

**Fun fact**: This entire extension was created using AI assistance - not a single line of code, documentation, or configuration was hand-written! From the manifest files and popup HTML to the CI/CD workflows and this README, everything was generated through AI collaboration.
