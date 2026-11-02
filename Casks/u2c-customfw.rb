cask "u2c-customfw" do
  version "0.1.1"
  sha256 "299f1585ceb48857a29a7f066d2f7dc2e8e401e3327d54bb4501d34b5c778607"

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
