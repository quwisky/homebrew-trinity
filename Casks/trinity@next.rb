cask "trinity@next" do
  version "0.4.0-next.0"
  sha256 "4b6064e570342540d6adb5fdc7217619e40717cc92f263789b5d753995e24ada"

  url "https://github.com/quwisky/trinity-matrix-client/releases/download/v#{version}/Trinity-#{version}-arm64-mac.zip"
  name "Trinity (next)"
  desc "End-to-end encrypted Matrix client"
  homepage "https://github.com/quwisky/trinity-matrix-client"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-next\.\d+)$/i)
    strategy :git
  end

  conflicts_with cask: "trinity"
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Trinity.app"

  zap trash: [
    "~/Library/Application Support/Trinity",
    "~/Library/Preferences/dev.trinityproject.trinity.plist",
    "~/Library/Saved Application State/dev.trinityproject.trinity.savedState",
  ]
end
