cask "vercel-menu-bar" do
  version "1.2.4"
  sha256 "bbb4a422a6912fb4b430e807e74a4c3df25485051d1d367a6b899fdf12a75d33"
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
