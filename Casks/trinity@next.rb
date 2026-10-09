cask "trinity@next" do
  version "0.3.0-next.3"
  sha256 "f83ee3321d632afc64901a1049f5e897047a1ea7ddca6b61c77ce2da89d5922d"

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
    "~/Library/Preferences/eu.qwky.trinity.plist",
    "~/Library/Saved Application State/eu.qwky.trinity.savedState",
  ]
end
