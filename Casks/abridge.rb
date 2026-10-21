cask "abridge" do
  version "0.6.0"
  sha256 "30b43df522ce3e518d48f083026a9da26f20b0841c190e601c59a84f40fa0e1f"

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
