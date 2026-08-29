# AGENTS.md — Starcat App Homebrew Tap

本文档是本仓库 AI 协作规则的唯一维护源。

## 独立仓库边界

- 本目录是 `starcat-app/homebrew-starcat` 独立 Git 仓库，不是 Starcat 主仓库的一部分。
- 修改前必须确认当前分支与工作区状态；未经 dong4j 明确要求，不得切换分支、提交或处理其他仓库。
- 变更只应服务 Homebrew Cask 分发；应用源码、官网、Sparkle feed 和发布产物分别由其所属仓库维护。

## 用途与技术栈

本仓库是 Starcat Direct 版的官方 Homebrew tap。核心是 Ruby Homebrew Cask，
通过 `https://starcat.ink/appcast.xml` 的 Sparkle feed 检测版本，并从
`https://starcat.ink/downloads/` 下载已签名、公证的 Apple Silicon DMG。

- Homebrew Cask DSL / Ruby
- GitHub Actions macOS runner
- Sparkle `livecheck`
- SHA-256 完整性校验

当前 Cask 只支持 Apple Silicon 与 macOS 15 Sequoia 及以上，安装
`Starcat.app`；`zap` 路径必须继续限定 Direct 版 bundle id
`com.starcat.app.direct`。

## 关键目录

- `Casks/starcat.rb`：版本、下载 URL、SHA-256、`livecheck`、系统要求和卸载规则。
- `.github/workflows/audit.yml`：执行 Homebrew style 与 strict audit。
- `README.md` / `README-ZH.md`：安装、升级和支持范围说明。
- `CONTRIBUTING.md` / `SECURITY.md`：Cask 维护与校验和安全要求。

## 开发与验证

```bash
brew style Casks/starcat.rb
brew tap starcat-app/starcat "https://github.com/starcat-app/homebrew-starcat.git"
brew audit --strict --cask starcat-app/starcat/starcat
git diff --check
```

`brew audit` 必须使用已安装的 tap 名称，不能把仓库内相对路径直接作为目标。

## 项目特有约束

- `Casks/starcat.rb` 的 `version`、下载 URL 与 `sha256` 由 Starcat Direct
  发布自动化维护。正常发版不得手工改值；只有自动化不可用且 dong4j 明确授权时，
  才能按已发布产物修复并记录原因。
- `sha256` 必须来自实际发布的公证 DMG，禁止猜测、复用旧值或对未发布文件计算后写入。
- Homebrew 与应用内 Sparkle 更新共享 feed 和下载主机，但安装、升级流程彼此独立，
  不得把 Sparkle 行为搬进 Cask。
- 不得放宽架构、最低系统版本、HTTPS 下载或 Direct 版 `zap` 边界，除非对应产品事实已变更。

## 发布禁令

未经 dong4j 在当前任务中明确授权，禁止创建或推送 tag、执行 `git push`、发布
GitHub Release、上传或替换 DMG、修改远端 tap、触发发布自动化或执行任何对外分发操作。
