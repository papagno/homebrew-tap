cask "punchlist" do
  version "0.3.1"
  sha256 "912a79bb1f3bb8c35a4bed85e54819db12372244d325df8304633cbbd5549c90"

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
