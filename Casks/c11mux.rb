cask "c11mux" do
  version "0.37.0"
  sha256 "80e4aa3043b637e50fb506caf67bab11fa93b731c0c0a3aa672a0c2f531d9994"

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
