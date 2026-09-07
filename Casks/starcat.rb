cask "starcat" do
  version "1.6.0,202609071918"
  sha256 "2257190ca44f7d4e3fdc01fd8b2a22b49ca22cd02426247410c52a847eefd513"

  url "https://starcat.ink/downloads/Starcat-#{version.csv.first}-arm64.dmg"
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
