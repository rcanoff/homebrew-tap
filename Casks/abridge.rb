cask "abridge" do
  version "0.4.0"
  sha256 "66e7b75cbb50df3d9c67639e7da4b6e4ab981380be48e2325c37a8c0e478ebef"

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
