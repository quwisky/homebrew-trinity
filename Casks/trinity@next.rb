cask "trinity@next" do
  version "0.7.0-next.4"
  sha256 "01f2cb6b49638a7617864722e2105ad1c528b4581aeb8b28b5a5b47dfc1b9434"

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
