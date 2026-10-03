cask "trinity" do
  version "0.1.0"
  sha256 "15cc83efec74e2e1e611d456a9c5262a22972eb4766144f669c71429f6368e0c"

  url "https://github.com/quwisky/trinity-matrix-client/releases/download/v#{version}/Trinity-#{version}-arm64-mac.zip"
  name "Trinity"
  desc "End-to-end encrypted Matrix client"
  homepage "https://github.com/quwisky/trinity-matrix-client"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "trinity@next"
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Trinity.app"

  zap trash: [
    "~/Library/Application Support/Trinity",
    "~/Library/Preferences/eu.qwky.trinity.plist",
    "~/Library/Saved Application State/eu.qwky.trinity.savedState",
  ]
end
