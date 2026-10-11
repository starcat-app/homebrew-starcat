cask "starcat" do
  version "1.9.0"
  sha256 "4423c577beaab35202e6e83584089ec3ae664c918b6776284f0392782d1198f9"

  # 与 Sparkle 清单共用 GitHub Release，后续版本不再依赖阿里云 DMG 副本。
  url "https://github.com/starcat-app/Starcat/releases/download/v#{version.csv.first}/Starcat-#{version.csv.first}-arm64.dmg"
  name "Starcat"
  desc "GitHub Stars manager and AI knowledge organizer"
  homepage "https://starcat.ink/"

  livecheck do
    url "https://starcat.ink/appcast.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Starcat.app"

  zap trash: [
    "~/Library/Application Support/Starcat",
    "~/Library/Caches/com.starcat.app.direct",
    "~/Library/HTTPStorages/com.starcat.app.direct",
    "~/Library/Preferences/com.starcat.app.direct.plist",
    "~/Library/Saved Application State/com.starcat.app.direct.savedState",
  ]
end
