cask "vercel-menu-bar" do
  version "1.1"
  sha256 "0c67e492729a88f3e1e17afe58af37141848e9aeb280aa4ff485134afc117c11"
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
