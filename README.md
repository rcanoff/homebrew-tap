# rcanoff/homebrew-tap

Homebrew casks for rcanoff's macOS apps.

## Install

```sh
brew install --cask rcanoff/tap/apple-bridge
```

Installing by the fully qualified name trusts only that cask. To install by short name, tap and trust it first:

```sh
brew tap rcanoff/tap
brew trust --cask rcanoff/tap/apple-bridge
brew install --cask apple-bridge
```

## Casks

| Cask | App |
|---|---|
| `apple-bridge` | [Apple Bridge](https://github.com/rcanoff/apple-bridge): local MCP server for Apple frameworks (macOS 26+, Apple silicon) |

Each app's release workflow writes its cask under `Casks/`. Apps that update themselves with Sparkle set `auto_updates true`, so `brew upgrade` leaves updates to the app.
