cask "starcat" do
  version "1.7.0"
  sha256 "b0c93bc551c9299dc2567f676fcd4c7f3fcaaa487605dc585e00a19dce6e50ca"

  url "https://starcat.ink/downloads/Starcat-#{version}-arm64.dmg"
  name "Starcat"
  desc "GitHub Stars manager and AI knowledge organizer"
  homepage "https://starcat.ink/"

  livecheck do
    url "https://starcat.ink/appcast.xml"
    strategy :sparkle, &:short_version
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
