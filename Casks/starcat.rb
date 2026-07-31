cask "starcat" do
  version "1.3.0"
  sha256 "6c61a1300aded24bf8d9be95b6c84f23ab407d1a9200e0c860da84666951b2a8"

  url "https://starcat.ink/downloads/Starcat-#{version}-arm64.dmg"
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
