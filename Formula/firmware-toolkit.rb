class FirmwareToolkit < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit"
  url "https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "ed7cae4f6044ebed3a5d4da7559e0a0721cd8d869368755e11091eff8bf7963e"
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
