cask "starcat" do
  version "1.1.0"
  sha256 "5fa169283a86d2aebf74c274479bf7f01e56455a2c2e3d5ec00dec9597f95899"

  url "https://starcat.ink/downloads/Starcat-#{version}-arm64.dmg"
  name "Starcat"
  desc "Native macOS GitHub Stars manager and AI knowledge organizer"
  homepage "https://starcat.ink"

  livecheck do
    url "https://starcat.ink/appcast.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Starcat.app"

  zap trash: [
    "~/Library/Application Support/Starcat",
    "~/Library/Caches/com.starcat.app",
    "~/Library/Caches/com.starcat.app.direct",
    "~/Library/HTTPStorages/com.starcat.app",
    "~/Library/HTTPStorages/com.starcat.app.direct",
    "~/Library/Preferences/com.starcat.app.plist",
    "~/Library/Preferences/com.starcat.app.direct.plist",
    "~/Library/Saved Application State/com.starcat.app.savedState",
    "~/Library/Saved Application State/com.starcat.app.direct.savedState",
  ]
end
