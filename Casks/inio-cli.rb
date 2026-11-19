# inio command-line tools: `inio` (CLI) and `inio-mcp` (MCP server).
#
# The release workflow (.github/workflows/release.yml) sets `version` and
# `sha256` from each published release; edit the rest by hand. The zip is
# built, signed and notarized in the app's repository
# (scripts/build-cli-tools.sh) and uploaded by scripts/publish-cli-tools.sh.
cask "inio-cli" do
  version "2.0.1"
  sha256 "52f3b8c7c99d04eebd0cf61506b412d4e3d8a8c4db38a7d4220ccc3369a84d50"

  url "https://github.com/ok64-de/homebrew-inio/releases/download/v#{version}/inio-cli-#{version}.zip"
  name "inio command-line tools"
  desc "Command-line tool and MCP server for the inio notes app"
  homepage "https://github.com/ok64-de/homebrew-inio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  binary "inio"
  binary "inio-mcp"
end
