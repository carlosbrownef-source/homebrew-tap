class U2cCustomfw < Formula
  include Language::Python::Virtualenv

  desc "Back up, patch and repair the 8BitDo Ultimate 2C Wireless firmware (1.09)"
  homepage "https://github.com/carlosbrownef-source/u2c-customfw"
  url "https://github.com/carlosbrownef-source/u2c-customfw/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "092a2947fa41b179e397c65dbfbb9ffbddbecb3f95b670c765fc8dfb9bd6cc08"
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
