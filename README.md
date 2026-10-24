# Tailwind CSS Standalone Homebrew Tap

Homebrew tap for TailwindCSS standalone binaries - no Node.js required!

## Installation

```bash
brew install aureuma/tailwindcss-standalone/tailwindcss-standalone
```

## Usage

After installation, you can use TailwindCSS directly:

```bash
tailwindcss --help
tailwindcss init
tailwindcss -i input.css -o output.css
```

## Features

- ✅ Standalone binary - no Node.js installation required
- ✅ Multi-platform support (macOS ARM64 & x64, Linux ARM64 & x64)
- ✅ Automatic daily updates via GitHub Actions
- ✅ Direct installation from official TailwindCSS releases

## Auto-Updates

The formula is automatically updated daily via GitHub Actions. The workflow:
- Checks for new TailwindCSS releases
- Downloads the latest binaries
- Calculates and updates SHA256 checksums
- Commits and pushes the changes automatically

If you ever see a checksum mismatch during install, run `brew update` to sync
the tap before reinstalling.

You can also manually trigger the update workflow from the Actions tab.

## About

This tap provides an easy way to install the standalone TailwindCSS CLI tool via Homebrew. The formula automatically installs the appropriate binary for your platform from the official [TailwindCSS releases](https://github.com/tailwindlabs/tailwindcss/releases).

For more details on the standalone CLI, refer to the [official Tailwind CSS documentation](https://tailwindcss.com/docs/installation#standalone-cli).
