cask "firmware-toolkit" do
  version "0.3.0"
  sha256 "faf95549cc15d1c51a4b494614e4cdea233359c157c33f0a23e4990223973f13"

  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/releases/download/v#{version}/firmware-toolkit-#{version}-macos-arm64.zip"
  name "Firmware Toolkit"
  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Firmware Toolkit.app"

  zap trash: [
    "~/Library/Caches/org.u2c-customfw.app",
    "~/Library/Preferences/org.u2c-customfw.app.plist",
    "~/Library/Saved Application State/org.u2c-customfw.app.savedState",
    "~/Library/WebKit/org.u2c-customfw.app",
  ]
end
