class FirmwareToolkit < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"
  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "336d54401f0905b8b24ec4d034675a0fd639514ef0e9f4a8049f644b01d7d117"
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
