# Homebrew Starcat

<!-- starcat-promo:start -->
<div align="center">
<a href="https://starcat.ink"><img src="https://raw.githubusercontent.com/starcat-app/starcat-pro/main/banner.webp" width="100%" alt="Starcat" /></a>

<p><strong>Official Homebrew tap for installing and updating Starcat.</strong></p>
<p>Starcat is a native macOS app that turns GitHub Stars into a searchable, organized and AI-assisted knowledge base. It supports README rendering, tags, private notes, release tracking, repository health signals, AI summaries, semantic search, browser plugin workflows and self-hostable support APIs.</p>

<a href="https://github.com/starcat-app/homebrew-starcat"><img src="https://img.shields.io/badge/Install%20with-Homebrew-FBBF24?style=for-the-badge&logo=homebrew&logoColor=white" width="220" alt="Install with Homebrew"/></a>
<br/>
<sub><a href="./README-ZH.md">中文说明</a></sub>
</div>

<div align="center">
<a href="https://starcat.ink"><img src="https://img.shields.io/badge/website-starcat.ink-38BDF8?style=flat&color=blue" alt="website"/></a>
<a href="https://github.com/starcat-app/starcat-pro"><img src="https://img.shields.io/badge/support-starcat--pro-lightgrey.svg?style=flat&color=blue" alt="support"/></a>
<a href="https://github.com/starcat-app/homebrew-starcat"><img src="https://img.shields.io/badge/install-homebrew-lightgrey.svg?style=flat&color=blue" alt="homebrew"/></a>
<a href="https://github.com/starcat-app/starcat-localization"><img src="https://img.shields.io/badge/localization-open-lightgrey.svg?style=flat&color=blue" alt="localization"/></a>
</div>

<div align="center">
<img width="900" src="https://raw.githubusercontent.com/starcat-app/starcat-pro/main/main.webp" alt="Starcat main window"/>
</div>

**Preferred install method:**

```bash
brew tap starcat-app/starcat
brew trust starcat-app/starcat
brew install --cask starcat
```

**Useful links:**

- Home: https://starcat.ink
- Download: https://starcat.ink/downloads/Starcat-1.1.0-arm64.dmg
- Public support and release notes: https://github.com/starcat-app/starcat-pro
- Homebrew tap: https://github.com/starcat-app/homebrew-starcat
- Browser plugins: [Chrome](https://github.com/starcat-app/starcat-chrome-plugin) / [Safari](https://github.com/starcat-app/starcat-safari-plugin)
- Localization: https://github.com/starcat-app/starcat-localization

**Starcat ecosystem:**

- [starcat-sharing-api](https://github.com/dong4j/starcat-sharing-api)
- [starcat-trending-api](https://github.com/dong4j/starcat-trending-api)
- [starcat-weekly-api](https://github.com/dong4j/starcat-weekly-api)
- [starcat-wiki-api](https://github.com/dong4j/starcat-wiki-api)
- [starcat-recommend-api](https://github.com/dong4j/starcat-recommend-api)
- [starcat-discovery-api](https://github.com/dong4j/starcat-discovery-api)
- [starcat-license-api](https://github.com/dong4j/starcat-license-api)
<!-- starcat-promo:end -->

## Install

Homebrew is the preferred installation method for the Direct build:

```bash
brew tap starcat-app/starcat
brew trust starcat-app/starcat
brew install --cask starcat
```

The tap name is `starcat-app/starcat`; the GitHub repository is `starcat-app/homebrew-starcat`, following Homebrew's tap naming convention.

## Upgrade

```bash
brew update
brew upgrade --cask starcat
```

The cask uses Starcat's Sparkle appcast for `livecheck`:

```ruby
livecheck do
  url "https://starcat.ink/appcast.xml"
  strategy :sparkle
end
```

Homebrew uses the Sparkle feed to detect new versions, then downloads the versioned DMG declared in the cask:

```ruby
url "https://starcat.ink/downloads/Starcat-#{version}-arm64.dmg"
```

The app's own in-app updates also use the Sparkle appcast. Homebrew and Sparkle therefore share the same release feed and download host, but Homebrew still performs its own install/upgrade flow.

## Uninstall

```bash
brew uninstall --cask starcat
```

The cask zap is scoped to the Direct build bundle id, `com.starcat.app.direct`.

## Requirements

- macOS 15 Sequoia or newer.
- Apple Silicon Mac.

## Links

- Website: https://starcat.ink
- Public support and release notes: https://github.com/starcat-app/starcat-pro
- Localization: https://github.com/starcat-app/starcat-localization
- Release notes: https://starcat.ink/changelog.html
- Cask source: [Casks/starcat.rb](./Casks/starcat.rb)
