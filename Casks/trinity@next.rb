cask "trinity@next" do
  version "0.5.0-next.6"
  sha256 "84adc6af7b8fe3d7c233c5c40c58bc07eda28ef0b44351d7a85d3972366e959c"

  url "https://github.com/quwisky/trinity-matrix-client/releases/download/v#{version}/Trinity-#{version}-arm64-mac.zip"
  name "Trinity Next"
  desc "End-to-end encrypted Matrix client"
  homepage "https://github.com/quwisky/trinity-matrix-client"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-next\.\d+)$/i)
    strategy :git
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Trinity Next.app"

  zap trash: [
    "~/Library/Application Support/Trinity Next",
    "~/Library/Caches/dev.trinityproject.trinity.next",
    "~/Library/Logs/Trinity Next",
    "~/Library/Preferences/dev.trinityproject.trinity.next.plist",
    "~/Library/Saved Application State/dev.trinityproject.trinity.next.savedState",
  ]
end
