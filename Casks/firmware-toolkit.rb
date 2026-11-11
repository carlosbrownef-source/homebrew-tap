cask "firmware-toolkit" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "4d98a38cd3ce3e2e15ed62336b1a194e91d9f2747a0cb4552746174c46e6cd48",
         intel: "a8d5fa35e8a2394cecd49b1d5b8a4900ce2b6c6cdda9f6772b57deb1102d1acc"

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
