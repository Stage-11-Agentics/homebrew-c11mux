cask "c11mux" do
  version "0.62.7"
  sha256 "75daa044bcedf684ace5a799fa0ffbba90333b40168aa952569944f8930a76ef"

  url "https://github.com/Stage-11-Agentics/c11mux/releases/download/v#{version}/c11mux-macos.dmg"
  name "c11mux"
  desc "Stage 11's fork of cmux — native macOS terminal multiplexer for AI coding agents"
  homepage "https://github.com/Stage-11-Agentics/c11mux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  conflicts_with cask: "cmux"

  app "c11mux.app"
  binary "#{appdir}/c11mux.app/Contents/Resources/bin/cmux"

  zap trash: [
    "~/Library/Application Support/c11mux",
    "~/Library/Application Support/cmux",
    "~/Library/Caches/c11mux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/com.stage11.c11mux.plist",
    "~/Library/Preferences/ai.manaflow.cmuxterm.plist",
  ]
end
