cask "firmware-toolkit" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "1b9723d6d0fc727175ea9c62b13d16881ef572f61666919bc6bd83a4bc9b38cc",
         intel: "c4e7ba0f9bfe0bb98a0d3433e0df4e2a8fcaf667f36a7343c8eacd0bc7fca5c5"

  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/releases/download/v#{version}/firmware-toolkit-#{version}-macos-#{arch}.zip"
  name "Firmware Toolkit"
  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless and its 2.4 GHz dongle"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"

  depends_on macos: :ventura

  app "Firmware Toolkit.app"

  zap trash: [
    "~/Library/Caches/org.u2c-customfw.app",
    "~/Library/Preferences/org.u2c-customfw.app.plist",
    "~/Library/Saved Application State/org.u2c-customfw.app.savedState",
    "~/Library/WebKit/org.u2c-customfw.app",
  ]
end
