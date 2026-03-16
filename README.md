# Linkwarden CLI

A simple, fast CLI tool for adding links to [Linkwarden](https://linkwarden.app/) with collection selection via fzf.

## Features

- **Fast**: Caches collections locally for instant loading
- **Interactive**: Select collections using fzf fuzzy finder
- **Flexible**: Accepts URL from argument, clipboard, or interactive prompt
- **Offline support**: Works with cached collections when API is unreachable
- **Simple**: Single Python script, no dependencies beyond standard library

## Installation

### Quick Install

```bash
make install
```

### Manual Install

```bash
# Copy the script to your local bin
cp linkwarden-add ~/.local/bin/

# Ensure ~/.local/bin is in your PATH
export PATH="$HOME/.local/bin:$PATH"
```

## Configuration

Create a config file at `~/.config/linkwarden/config.env`:

```bash
LINKWARDEN_URL=https://links.example.com
LINKWARDEN_TOKEN=your_api_token_here
```

Get your API token from your Linkwarden instance (Settings → API Keys).

## Usage

```bash
# Add URL from clipboard or prompt
linkwarden-add

# Add specific URL
linkwarden-add https://example.com

# Force refresh collections cache
linkwarden-add https://example.com --refresh
linkwarden-add https://example.com -r
```

### Workflow

1. Run `linkwarden-add` with optional URL
2. Collections are loaded from cache (or fetched if no cache exists)
3. Select a collection using fzf
4. Link is saved to your Linkwarden instance

## Cache

Collections are cached at `~/.cache/linkwarden/collections.json` for fast subsequent loads. The cache is updated automatically when you use `--refresh` or when the API returns fresh data.

## Requirements

- Python 3.6+
- `fzf` (install via your package manager)
- `wl-paste` (for clipboard support on Wayland)

## Uninstall

```bash
make uninstall
```

## License

MIT
