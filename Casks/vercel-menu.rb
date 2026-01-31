cask "vercel-menu" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/ryanjmarcus/vercel-menu-bar/releases/download/v#{version}/Vercel-Menu-Bar-#{version}.dmg"
  name "Vercel Menu Bar"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://github.com/ryanjmarcus/vercel-menu-bar"

  depends_on macos: ">= :sonoma"

  app "Vercel Menu Bar.app"

  zap trash: [
    "~/Library/Preferences/com.ryanmarcus.vercel-menu-bar.plist",
  ]
end
