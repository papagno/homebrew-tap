cask "fuel-gauge" do
  version "0.1.0"
  sha256 "80e4228638915314adf56c9d0268d218a31219e8ab961db63abb94670a1753a0"

  url "https://github.com/papagno/fuel-gauge/releases/download/v#{version}/FuelGauge-#{version}.zip"
  name "Fuel Gauge"
  desc "Menu bar gauge for Claude, ChatGPT and GitHub Copilot usage limits"
  homepage "https://github.com/papagno/fuel-gauge"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "FuelGauge.app"

  zap trash: [
    "~/Library/Caches/com.effectivebits.FuelGauge",
    "~/Library/HTTPStorages/com.effectivebits.FuelGauge",
    "~/Library/Preferences/com.effectivebits.FuelGauge.plist",
  ]
end
