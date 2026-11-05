# carlosbrownef-source/tap

Homebrew tap for [Firmware Toolkit](https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit), an all-in-one Mac app for the 8BitDo Ultimate 2C
Wireless controller (firmware 1.09). macOS only. Read its
[DISCLAIMER](https://github.com/carlosbrownef-source/8bitdo-ultimate-2c-toolkit/blob/main/DISCLAIMER.md) first.

Command-line tool:

```sh
brew install carlosbrownef-source/tap/firmware-toolkit
```

App (Apple silicon):

```sh
brew trust --cask carlosbrownef-source/tap/firmware-toolkit
brew install --cask carlosbrownef-source/tap/firmware-toolkit
```

The app is not signed, so macOS blocks it the first time: open **System Settings → Privacy & Security** and click
**Open Anyway**.
