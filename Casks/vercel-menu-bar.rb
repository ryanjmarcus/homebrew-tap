cask "vercel-menu-bar" do
  version "1.0.5"
  sha256 "16a919d501cb8c998dfdcf4d49ac32fe532889baaeb3889e4b6251ec4ba0bceb"
  url "https://github.com/ryanjmarcus/vercel-menu-bar/releases/download/v#{version}/Vercel-Menu-Bar-#{version}.dmg"
  name "Vercel Menu Bar"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://github.com/ryanjmarcus/vercel-menu-bar"
  depends_on macos: ">= :sonoma"
  app "Vercel Menu Bar.app"
  zap trash: ["~/Library/Preferences/com.ryanmarcus.vercel-menu-bar.plist"]
end
