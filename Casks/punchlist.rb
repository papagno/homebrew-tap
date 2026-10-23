cask "punchlist" do
  version "0.1.0"
  sha256 "d8c4cfe46723a1e3e661f36904169f5f05e86b2dcb89ed0adce41276240b7c41"

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
