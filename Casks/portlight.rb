cask "portlight" do
  version "0.1.0"
  sha256 "9873202a36d20f44a96fe052d9f688ab4cfc1f36e1fdb8402689d8f5a034faf4"

  url "https://github.com/Takhoffman/portlight/releases/download/v#{version}/Portlight-#{version}.zip"
  name "Portlight"
  desc "Friendly read-only control center for ports, processes, keys, and jobs"
  homepage "https://github.com/Takhoffman/portlight"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Portlight.app"

  zap trash: [
    "~/Library/Caches/com.takhoffman.portlight",
    "~/Library/Preferences/com.takhoffman.portlight.plist",
    "~/Library/Saved Application State/com.takhoffman.portlight.savedState",
  ]
end
