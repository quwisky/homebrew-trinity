cask "trinity@next" do
  version "0.5.0-next.2"
  sha256 "aa4bbe89826a0eec5ce66238b0b379bf1540a00b4d53a0191a06cebfb37ce3cd"

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
