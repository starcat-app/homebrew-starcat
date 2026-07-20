# Homebrew Starcat

<!-- starcat-promo:start -->
<div align="center">
<a href="https://starcat.ink"><img src="https://raw.githubusercontent.com/starcat-app/starcat-pro/main/banner.webp" width="100%" alt="Starcat" /></a>

<p><strong>这是 Starcat 的官方 Homebrew tap，也是推荐安装与更新入口。</strong></p>
<p>Starcat 是一款原生 macOS 应用，可以把 GitHub Stars 变成可搜索、可整理、可用 AI 理解的知识库。它支持 README 渲染、标签与私有笔记、Release 追踪、仓库健康度、AI 摘要、语义搜索、浏览器插件工作流，并提供多个可自部署 API。</p>

<a href="https://github.com/dong4j/homebrew-starcat"><img src="https://img.shields.io/badge/Install%20with-Homebrew-FBBF24?style=for-the-badge&logo=homebrew&logoColor=white" width="220" alt="Install with Homebrew"/></a>
<br/>
<sub><a href="./README.md">English</a></sub>
</div>

<div align="center">
<a href="https://starcat.ink"><img src="https://img.shields.io/badge/website-starcat.ink-38BDF8?style=flat&color=blue" alt="website"/></a>
<a href="https://github.com/starcat-app/starcat-pro"><img src="https://img.shields.io/badge/support-starcat--pro-lightgrey.svg?style=flat&color=blue" alt="support"/></a>
<a href="https://github.com/dong4j/homebrew-starcat"><img src="https://img.shields.io/badge/install-homebrew-lightgrey.svg?style=flat&color=blue" alt="homebrew"/></a>
<a href="https://github.com/starcat-app/starcat-localization"><img src="https://img.shields.io/badge/localization-open-lightgrey.svg?style=flat&color=blue" alt="localization"/></a>
</div>

<div align="center">
<img width="900" src="https://raw.githubusercontent.com/starcat-app/starcat-pro/main/main.webp" alt="Starcat main window"/>
</div>

**首选 Homebrew 安装：**

```bash
brew tap dong4j/starcat
brew trust dong4j/starcat
brew install --cask starcat
```

**相关链接：**

- 官网: https://starcat.ink
- 下载: https://starcat.ink/downloads/Starcat-1.1.0-arm64.dmg
- 公开支持与发布说明: https://github.com/starcat-app/starcat-pro
- Homebrew tap: https://github.com/dong4j/homebrew-starcat
- 浏览器插件: [Chrome](https://github.com/dong4j/starcat-chrome-plugin) / [Safari](https://github.com/starcat-app/starcat-safari-plugin)
- 本地化: https://github.com/starcat-app/starcat-localization

**Starcat 生态项目：**

- [starcat-sharing-api](https://github.com/dong4j/starcat-sharing-api)
- [starcat-trending-api](https://github.com/dong4j/starcat-trending-api)
- [starcat-weekly-api](https://github.com/dong4j/starcat-weekly-api)
- [starcat-wiki-api](https://github.com/dong4j/starcat-wiki-api)
- [starcat-recommend-api](https://github.com/dong4j/starcat-recommend-api)
- [starcat-discovery-api](https://github.com/dong4j/starcat-discovery-api)
- [starcat-license-api](https://github.com/dong4j/starcat-license-api)
<!-- starcat-promo:end -->

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
- 公开支持与发布说明：https://github.com/starcat-app/starcat-pro
- 本地化：https://github.com/starcat-app/starcat-localization
- 发布说明：https://starcat.ink/changelog.html
- Cask 源码：[Casks/starcat.rb](./Casks/starcat.rb)
