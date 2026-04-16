cask "c11mux" do
  version "0.59.0"
  sha256 :no_check  # TODO: pin to SHA256 of first c11mux release DMG

  url "https://github.com/Stage-11-Agentics/c11mux/releases/download/v#{version}/c11mux-macos.dmg"
  name "c11mux"
  desc "Stage 11's fork of cmux — native macOS terminal multiplexer for AI coding agents"
  homepage "https://github.com/Stage-11-Agentics/c11mux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  conflicts_with cask: "cmux"

  app "c11mux.app"

  zap trash: [
    "~/Library/Application Support/c11mux",
    "~/Library/Application Support/cmux",
    "~/Library/Caches/c11mux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/com.stage11.c11mux.plist",
    "~/Library/Preferences/ai.manaflow.cmuxterm.plist",
  ]
end
