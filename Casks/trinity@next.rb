cask "trinity@next" do
  version "0.1.1-next.0"
  sha256 "4550d148ba16efe6e4924b319e8c856551f09fcbaddc76f0ed714c55673b7a02"

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
