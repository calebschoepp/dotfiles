# Dotfiles

This repo contains my personal dotfile configuration along with documentation for any software or preferences I have that must be manually setup. Largely based off of [this](https://github.com/endocrimes/dotfiles). Focuses on configuring over provisioning (but does some provisioning e.g. `brew`).

## Installation

```bash
# Require first on Mac to make sure you have things like Git
xcode-select --install

# Clone the dotfiles repo. Work tree is $HOME so that dotfiles are in the right spot.
# Git dir is in $HOME/.dotfiles.git so that it isn't found by recursive directory search Git does.
git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git init && \
git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git remote add origin https://github.com/calebschoepp/dotfiles.git && \
git --work-tree=$HOME --git-dir=$HOME/.dotfiles.git pull origin main
make osx
```

## Manual Mac configuration

- `System Settings` > `Appearance`
  - Set `Appearance` to `Dark`
- `System Settings` > `Sound`
  - Disable `Play sound on startup`
- `System Settings` > `Trackpad` > `Point & Click`
  - Crank up `Tracking speed` to about 7/10
  - Enable `Tap to click`
- `System Settings` > `Mouse`
  - Crank up `Tracking speed` to about 8/10
- `System Settings` > `Keyboard`
  - Crank up `Key Repeat` to max
  - Turn `Delay Until Repeat` to minimum
  - Enable `Dictation`
- `System Settings` > `Keyboard` > `Keyboard Shortcuts` > `Spotlight`
  - Set `Show Spotlight search` to `⌥ Space`
- `System Settings` > `Keyboard` > `Keyboard Shortcuts` > `Modifier Keys`
  - Set `Caps Lock` to `Escape`

## Productivity Software

### Better Display

Already installed via `brew`. The license is in 1Password.

- LG 27" at 1920x1080
- LG DualUp at 1600x1800

### Contexts

Already installed via `brew`. To activate the license just download it from 1Password and click on it. Configure as follows:

- `Sidebar`
  - Set `Show sidebar on` to `No display`
- `Search`
  - Set `Search with` to `Command-Space`

### Google Drive

TODO

### Logi Options+

TODO

### Menu World Time

Install via [Appstore](https://apps.apple.com/us/app/menu-world-time/id1446377255)

TODO: Clock configuration

### Obsidian

TODO

### Rectangle Pro

TODO

### ShurPlus

TODO

### Timery

Install via [Appstore](https://timeryapp.com/).

TODO: More to do?

## Personal Software

TODO: Flesh out

- Cockatrice
- Guitar Pro 8
- Logic Pro
- MuseScore 4
- MyWhoosh
- UaConnect

## Manual Google Chrome configuration

TODO: Flesh out

- Search shortcuts for github `g` and rust docs `r`
- Turn off google password manager
- Extensions
  - 1password
  - adblcok
  - appblock
  - eyedropper
  - hit tab and enter on google search results
  - momentum
  - privacy badger
  - refined github
  - unhook
