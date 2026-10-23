cask "trinity@next" do
  version "0.6.0-next.2"
  sha256 "4b7e2074df2d8cfe58292d43c913a3a7ac9901c2fd3df79cb0e1b3c37f5dc08d"

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
