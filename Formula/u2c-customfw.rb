class U2cCustomfw < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/u2c-customfw"
  url "https://github.com/carlosbrownef-source/u2c-customfw/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "effe2a8d7673b0ad46148347429d3deb1f5be030093fffa16696d540c30b4edd"
  license "GPL-3.0-or-later"

  depends_on :macos
  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Ultimate 2C", shell_output("#{bin}/u2c-customfw --help")
  end
end
