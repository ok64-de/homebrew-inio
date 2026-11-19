# inio command-line tools: `inio` (CLI) and `inio-mcp` (MCP server).
#
# The release workflow (.github/workflows/release.yml) sets `version` and
# `sha256` from each published release; edit the rest by hand. The zip is
# built, signed and notarized in the app's repository
# (scripts/build-cli-tools.sh) and uploaded by scripts/publish-cli-tools.sh.
cask "inio-cli" do
  version "2.0.0"
  sha256 "44f4f3115df7817bb6931362b0240a0111cc6990abd2e122977ddb24e55d35c3"

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
