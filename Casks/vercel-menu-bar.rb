cask "vercel-menu-bar" do
  version "1.0.10"
  sha256 "b5f7b9896a38a8020f1b2e0821176136fb0e3b017acfa3f70bd66775ec776666"
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
