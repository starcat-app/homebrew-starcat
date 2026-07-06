<div align="center">
<a href="https://starcat.ink"><img src="./assets/banner.webp" width="100%" alt="Starcat" align="center"/></a>

<h2>Homebrew Starcat</h2>
<p>Starcat 官方 Homebrew tap，用于安装和更新 Starcat。Starcat 是一款原生 macOS GitHub Stars 管理与 AI 知识整理工具。</p>

<a href="https://github.com/dong4j/homebrew-starcat"><img src="https://img.shields.io/badge/Install%20with-Homebrew-FBBF24?style=for-the-badge&logo=homebrew&logoColor=white" width="220" alt="Install with Homebrew"/></a>
<br/>
<sub><a href="./README.md">English</a></sub>
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

**Starcat** 可以把 GitHub Stars 变成可搜索的 AI 知识库。它会把 starred repositories 同步到原生 macOS 工作区，渲染 README，支持标签、私有笔记、Release 追踪、仓库健康度信号、AI 摘要、语义搜索、Browser Plugin 工作流等能力。

<div align="center">
<img width="900" src="./assets/main.webp" alt="Starcat 主窗口"/>
</div>

## Install

Homebrew 是 Direct 版本的首选安装方式：

```bash
brew tap dong4j/starcat
brew trust dong4j/starcat
brew install --cask starcat
```

tap 名称是 `dong4j/starcat`；GitHub 仓库是 `dong4j/homebrew-starcat`，这是 Homebrew tap 的命名约定。

## Upgrade

```bash
brew update
brew upgrade --cask starcat
```

cask 使用 Starcat 的 Sparkle appcast 做 `livecheck`：

```ruby
livecheck do
  url "https://starcat.ink/appcast.xml"
  strategy :sparkle
end
```

Homebrew 使用 Sparkle feed 检测新版本，然后下载 cask 中声明的版本化 DMG：

```ruby
url "https://starcat.ink/downloads/Starcat-#{version}-arm64.dmg"
```

Starcat 应用内更新也使用同一个 Sparkle appcast。也就是说，Homebrew 和 Sparkle 共用同一套版本 feed 和下载域名，但 Homebrew 仍然执行自己的安装 / 更新流程。

## Uninstall

```bash
brew uninstall --cask starcat
```

cask 的 `zap` 只针对 Direct 版本的 bundle id：`com.starcat.app.direct`。

## Requirements

- macOS 15 Sequoia 或更高版本。
- Apple Silicon Mac。

## Links

- 官网：https://starcat.ink
- 公开支持与发布说明：https://github.com/dong4j/starcat-pro
- 本地化：https://github.com/dong4j/starcat-localization
- 发布说明：https://starcat.ink/changelog.html
- Cask 源码：[Casks/starcat.rb](./Casks/starcat.rb)
