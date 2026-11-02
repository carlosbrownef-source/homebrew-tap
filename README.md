# carlosbrownef-source/tap

Homebrew tap for [u2c-customfw](https://github.com/carlosbrownef-source/u2c-customfw), which backs up, patches and
repairs the firmware of the 8BitDo Ultimate 2C Wireless controller (firmware 1.09). macOS only. Read its
[DISCLAIMER](https://github.com/carlosbrownef-source/u2c-customfw/blob/main/DISCLAIMER.md) first.

Command-line tool:

```sh
brew install carlosbrownef-source/tap/u2c-customfw
```

App (Apple silicon):

```sh
brew trust --cask carlosbrownef-source/tap/u2c-customfw
brew install --cask carlosbrownef-source/tap/u2c-customfw
```

The app is not signed, so macOS blocks it the first time: open **System Settings → Privacy & Security** and click
**Open Anyway**.
