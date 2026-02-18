cask "cmux" do
  version "0.43.0"
  sha256 "ad84aae9aec9d49be660126833948b9024f2f0862576aed6362a761ff9e3ea64"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos.dmg"
  name "cmux"
  desc "Lightweight native macOS terminal with vertical tabs for AI coding agents"
  homepage "https://github.com/manaflow-ai/cmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "cmux.app"

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/ai.manaflow.cmuxterm.plist",
  ]
end
