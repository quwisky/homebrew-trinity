cask "trinity@next" do
  version "0.4.0-next.3"
  sha256 "6bdc9ee7e09bd2ff1b7b336e31e09e4364b07d681233128bd0ccd59a44cdebb0"

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
