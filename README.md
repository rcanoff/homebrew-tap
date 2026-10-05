# rcanoff/homebrew-tap

Homebrew casks for rcanoff's macOS apps.

## Install

```sh
brew install --cask rcanoff/tap/abridge
```

Installing by the fully qualified name trusts only that cask. To install by short name, tap and trust it first:

```sh
brew tap rcanoff/tap
brew trust --cask rcanoff/tap/abridge
brew install --cask abridge
```

## Casks

| Cask | App |
|---|---|
| `abridge` | [ABridge](https://github.com/rcanoff/abridge): local MCP server for Apple frameworks (macOS 26+, Apple silicon) |

Each app's release workflow writes its cask under `Casks/`. Apps that update themselves with Sparkle set `auto_updates true`, so `brew upgrade` leaves updates to the app.
