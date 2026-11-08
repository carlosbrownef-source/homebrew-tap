cask "firmware-toolkit" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "9d479177b85fa47828eb0a1b361107b9e286f153335f42e1c12ec5b93699a054",
         intel: "dcb7f2360f66e9b118fed3a98e4772563e33bf17f4850835ffb21d47272835ae"

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
