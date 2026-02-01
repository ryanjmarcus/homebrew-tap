cask "vercel-menu-bar" do
  version "1.2.7"
  sha256 "172bfa5ed4e541c52319d74fe3e2f7a66e96dc3bd04aee3d0ead0051f6c06d56"
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
