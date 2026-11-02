cask "u2c-customfw" do
  version "0.1.0"
  sha256 "cb25c5122e160d04741dcf07f55aa96e3b48e47fc702548e6b8807f8d5e6fb25"

  url "https://github.com/carlosbrownef-source/u2c-customfw/releases/download/v#{version}/u2c-customfw-#{version}-macos-arm64.zip"
  name "u2c-customfw"
  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/u2c-customfw"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "u2c-customfw.app"

  zap trash: [
    "~/Library/Caches/org.u2c-customfw.app",
    "~/Library/Preferences/org.u2c-customfw.app.plist",
    "~/Library/Saved Application State/org.u2c-customfw.app.savedState",
    "~/Library/WebKit/org.u2c-customfw.app",
  ]
end
