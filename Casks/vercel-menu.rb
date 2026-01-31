cask "vercel-menu" do
  version "1.0.1"
  sha256 "0d51c1a088d10ae3d7a80d8ebc9aad9511272e2d51cb2839a09789c68299105b"
  url "https://github.com/ryanjmarcus/vercel-menu-bar/releases/download/v#{version}/Vercel-Menu-Bar-#{version}.dmg"
  name "Vercel Menu Bar"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://github.com/ryanjmarcus/vercel-menu-bar"
  depends_on macos: ">= :sonoma"
  app "Vercel Menu Bar.app"
  zap trash: ["~/Library/Preferences/com.ryanmarcus.vercel-menu-bar.plist"]
end
