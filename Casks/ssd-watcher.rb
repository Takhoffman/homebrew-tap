cask "ssd-watcher" do
  version "0.1.1"
  sha256 "391c68de33a9eb3e88ea9639a6b16c8bcbd8cd08c68d0171d8c42615095e1eb6"

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
