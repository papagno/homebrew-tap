cask "punchlist" do
  version "0.3.0"
  sha256 "ddc71aef2956e158f654b355d361883e00e90ab98337d3f457bb6901398bf705"

  url "https://github.com/papagno/punchlist/releases/download/v#{version}/Punchlist-#{version}.zip"
  name "Punchlist"
  desc "To-do list of your GitHub issues and pull requests, beside your code"
  homepage "https://github.com/papagno/punchlist"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on formula: "gh"
  depends_on macos: :golden_gate

  app "Punchlist.app"

  zap trash: [
    "~/Library/Caches/com.effectivebits.Punchlist",
    "~/Library/HTTPStorages/com.effectivebits.Punchlist",
    "~/Library/Preferences/com.effectivebits.Punchlist.plist",
    "~/Library/Saved Application State/com.effectivebits.Punchlist.savedState",
  ]
end
