cask "abridge" do
  version "0.3.2"
  sha256 "a812a12e73be3a1405852ddcde0c5c7ddedcf79daa78c6141ea6a1396e6fbe95"

  url "https://github.com/rcanoff/abridge/releases/download/v#{version}/ABridge-#{version}.dmg"
  name "ABridge"
  desc "Local MCP server for Apple frameworks"
  homepage "https://github.com/rcanoff/abridge"

  livecheck do
    url "https://github.com/rcanoff/abridge/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "ABridge.app"

  zap trash: [
    "~/Library/Application Support/ABridge",
    "~/Library/Caches/io.github.rcanoff.ABridge",
    "~/Library/HTTPStorages/io.github.rcanoff.ABridge",
    "~/Library/Preferences/io.github.rcanoff.ABridge.plist",
  ]
end
