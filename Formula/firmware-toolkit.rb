class FirmwareToolkit < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"
  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "2a47f53aa57765d69c4ac4b341fe4d00fff023c4f00bd6c55a78a2af1ade3446"
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
