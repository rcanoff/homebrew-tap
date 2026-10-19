cask "abridge" do
  version "0.5.1"
  sha256 "139cf7baa04eda606534dc55fcd831257bafeb2f4dcc3a07deafcef67478e5d2"

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
