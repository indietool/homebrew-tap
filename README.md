# Homebrew Tap for indietool

This is the official Homebrew tap for [indietool](https://indietool.dev), a CLI tool for indie builders to manage domains, DNS records, and secrets.

## Installation

### Add the tap and install

```bash
brew tap indietool/homebrew
brew install indietool
```

### Or install directly

```bash
brew install indietool/homebrew/indietool
```

## Usage

After installation, you can use `indietool` from anywhere in your terminal:

```bash
# Check domain availability
indietool domain explore myapp

# Manage DNS records
indietool dns list example.com

# Store secrets securely
indietool secret set api-key "your-secret-key"
```

## Features

- 🌍 Hunt domain names across 50+ TLDs
- 🗓️ Track domain expiries across registrars
- ☁️ Manage DNS records with auto-detection
- 🔐 Securely store API keys using OS keyring

## Documentation

For complete documentation and usage examples, visit the [main CLI documentation](https://indietool.dev) or check the help:

```bash
indietool --help
```

## Issues

Report issues and feature requests at [indietool/cli](https://github.com/indietool/cli/issues).
