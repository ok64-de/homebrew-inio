# inio command-line tools: `inio` (CLI) and `inio-mcp` (MCP server).
#
# The release workflow (.github/workflows/release.yml) sets `version` and
# `sha256` from each published release; edit the rest by hand. The zip is
# built, signed and notarized in the app's repository
# (scripts/build-cli-tools.sh) and uploaded by scripts/publish-cli-tools.sh.
cask "inio-cli" do
  version "2.0.2"
  sha256 "974d89f4933c2b8444c76c280d250229fd1fb0242e3aa4720d75f79f685d4d10"

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
