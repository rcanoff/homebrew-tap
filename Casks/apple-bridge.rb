cask "apple-bridge" do
  version "0.1.0"
  sha256 "f6f439f015e4bceb46e38ccf93fb43ba2526bc2e4457c7b345e8fb7faf4d7053"

  url "https://github.com/rcanoff/apple-bridge/releases/download/v#{version}/AppleBridge-#{version}.dmg"
  name "Apple Bridge"
  desc "Local MCP server for Apple frameworks"
  homepage "https://github.com/rcanoff/apple-bridge"

  livecheck do
    url "https://github.com/rcanoff/apple-bridge/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "AppleBridge.app"

  zap trash: [
    "~/Library/Application Support/AppleBridge",
    "~/Library/Caches/com.applebridge.AppleBridge",
    "~/Library/HTTPStorages/com.applebridge.AppleBridge",
    "~/Library/Preferences/com.applebridge.AppleBridge.plist",
  ]
end
