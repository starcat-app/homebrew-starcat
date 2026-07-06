<div align="center">
<a href="https://starcat.ink"><img src="./assets/banner.webp" width="100%" alt="Starcat" align="center"/></a>

<h2>Homebrew Starcat</h2>
<p>The official Homebrew tap for installing and updating Starcat, a native macOS GitHub Stars manager and AI knowledge organizer.</p>

<a href="https://github.com/dong4j/homebrew-starcat"><img src="https://img.shields.io/badge/Install%20with-Homebrew-FBBF24?style=for-the-badge&logo=homebrew&logoColor=white" width="220" alt="Install with Homebrew"/></a>
</div>

<br />

<div align="center">
<a href="https://starcat.ink"><img src="https://img.shields.io/badge/website-starcat.ink-38BDF8?style=flat&color=blue" alt="website"/></a>
<a href="https://github.com/dong4j/starcat-pro"><img src="https://img.shields.io/badge/support-starcat--pro-lightgrey.svg?style=flat&color=blue" alt="support"/></a>
<a href="https://github.com/dong4j/homebrew-starcat/blob/main/Casks/starcat.rb"><img src="https://img.shields.io/badge/cask-starcat-lightgrey.svg?style=flat&color=blue" alt="cask"/></a>
<a href="https://starcat.ink/changelog.html"><img src="https://img.shields.io/badge/changelog-release%20notes-lightgrey.svg?style=flat&color=blue" alt="changelog"/></a>
</div>

<br />

## About Starcat

**Starcat** turns GitHub Stars into a searchable AI knowledge base. It syncs starred repositories into a native macOS workspace, renders README content, supports tags, private notes, release tracking, repository health signals, AI summaries, semantic search, Browser Plugin workflows and more.

<div align="center">
<img width="900" src="./assets/main.webp" alt="Starcat main window"/>
</div>

## Install

Homebrew is the preferred installation method for the Direct build:

```bash
brew tap dong4j/starcat
brew trust dong4j/starcat
brew install --cask starcat
```

The tap name is `dong4j/starcat`; the GitHub repository is `dong4j/homebrew-starcat`, following Homebrew's tap naming convention.

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
- Public support and release notes: https://github.com/dong4j/starcat-pro
- Localization: https://github.com/dong4j/starcat-localization
- Release notes: https://starcat.ink/changelog.html
- Cask source: [Casks/starcat.rb](./Casks/starcat.rb)
