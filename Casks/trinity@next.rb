cask "trinity@next" do
  version "0.6.0-next.5"
  sha256 "98b910979783c6ebfe4333263a944d614045a700710a4437819b529c4db51ddd"

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
