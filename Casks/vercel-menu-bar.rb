cask "vercel-menu-bar" do
  version "1.2.10"
  sha256 "356a1823da0c5a3b2cff65c9bb8544dcf1aacfc70065c47ef36125327fda94b9"
  url "https://github.com/ryanjmarcus/vercel-menu-bar/releases/download/v#{version}/Vercel-Menu-Bar-#{version}.dmg"
  name "Vercel Menu Bar"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://github.com/ryanjmarcus/vercel-menu-bar"
  depends_on macos: ">= :sonoma"
  app "Vercel Menu Bar.app"
  
  postflight do
    system_command "/usr/bin/open", args: ["-a", "Vercel Menu Bar"]
  end
  
  zap trash: ["~/Library/Preferences/com.ryanmarcus.vercel-menu-bar.plist"]
end
