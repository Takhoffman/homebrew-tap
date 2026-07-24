cask "ssd-watcher" do
  version "0.1.0"
  sha256 "d71ff1b344a4c79492e4c8b39a9aa2e6c832e07b271401eb55d0b6ff3b0c51d5"

  url "https://github.com/Takhoffman/ssd-watcher/releases/download/v#{version}/SSD-Watcher-#{version}.dmg"
  name "SSD Watcher"
  desc "Watch agent databases for abnormal SSD write activity"
  homepage "https://github.com/Takhoffman/ssd-watcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SSDWatcher.app"

  zap trash: [
    "~/Library/Application Support/com.takhoffman.SSDWatcher",
    "~/Library/Caches/com.takhoffman.SSDWatcher",
    "~/Library/Preferences/com.takhoffman.SSDWatcher.plist",
    "~/Library/Saved Application State/com.takhoffman.SSDWatcher.savedState",
  ]
end
