cask "punchlist" do
  version "0.2.0"
  sha256 "8501fd43d848749fd4a6a87c8e5069e7b05224fe6a6535e29f6510ff292dfb01"

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
