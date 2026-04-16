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

Install and follow setup instructions.

### Menu World Time

Install via [Appstore](https://apps.apple.com/us/app/menu-world-time/id1446377255). Configure the followinging cities:

- Seattle
- Denver
- Philadelphia
- Berlin
- Wellington
- New Delhi

Configure as follows:

- `Preferences` > `General Options...`
  - Enable `Start application at login`
  - Enable `Show time of day icons`
  - Enable `Show day difference indicators`
  - Enable `Show am/pm`
- `Preferences` > `Menu Bar Options...` > `Berlin`
  - Enable `Show clock in menu bar`

### Obsidian

TODO

### Rectangle Pro

Install from [here](https://rectangleapp.com/pro/). The license is in 1Password.

- `General`
  - Enable `Launch at login`
- `Layouts`
  - **Slack Streaming `^9`**

    | App         | Position    | Display     |
    | ----------- | ----------- | ----------- |
    | Obsidian    | Bottom Half | 1st Display |
    | Warp        | Bottom Half | 1st Display |
    | Spotify     | Bottom Half | 1st Display |
    | Slack       | Bottom Half | 1st Display |
    | Figma       | Bottom Half | 1st Display |
    | Fantastical | Top Half    | 1st Display |
    | Finder      | Right Half  | 2nd Display |
    | VS Code     | Left Half   | 2nd Display |
    | Chrome      | Maximize    | 2nd Display |

  - **Focus `^8`** (+Display, Launch, Minimize-other-apps)

    | App      | Position         | Display     |
    | -------- | ---------------- | ----------- |
    | VS Code  | Maximize         | 2nd Display |
    | Spotify  | Maximize         | 2nd Display |
    | Obsidian | Maximize         | 2nd Display |
    | Finder   | Last Third       | 1st Display |
    | Chrome   | First Two Thirds | 1st Display |

  - **Laptop** (-Display)

    | App      | Position |
    | -------- | -------- |
    | Finder   | Maximize |
    | Chrome   | Maximize |
    | Obsidian | Maximize |
    | VS Code  | Maximize |
    | Figma    | Maximize |
    | Spotify  | Maximize |
    | Slack    | Maximize |
    | Warp     | Maximize |

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

- Search shortcuts for github `g` and rust docs `r`
- `Settings` > `Search Engine` > `Manage search engines and site search` > `Site Search`
  - `docs.rs` with keyword `r` and URL `https://docs.rs/releases/search?query=%s&i-am-feeling-lucky=1`
  - `Github` with keyword `g` and URL `https://github.com/%s`
  - `Github Fermyon Repos` with keyword `gf` and URL `https://github.com/fermyon/%s`
  - `Github calebschoepp Repos` with keyword `gc` and URL `https://github.com/calebschoepp/%s`
- Turn off Google Password Manager
- Extensions
  - [1Password](https://chromewebstore.google.com/detail/1password-%E2%80%93-password-mana/aeblfdkhhhdcdjpifhhbdiojplfjncoa?hl=en)
  - [AdBlock](https://chromewebstore.google.com/detail/adblock-%E2%80%94-block-ads-acros/gighmmpiobklfepjocnamgkkbiglidom)
  - [AppBlock](https://chromewebstore.google.com/detail/appblock-block-sites-stay/lniombipmmhhighllijmcdncnefpjloi?hl=en)
  - [Eye Dropper](https://chromewebstore.google.com/detail/eye-dropper/hmdcmlfkchdmnmnmheododdhjedfccka)
  - [Hit TAB and ENTER on Google Search Results](https://chromewebstore.google.com/detail/hit-tab-and-enter-on-goog/kkldgaaaafjoipnomoinnkccihdiffee)
  - [Momentum](https://chromewebstore.google.com/detail/momentum/laookkfknpbbblfpciffpaejjkokdgca?hl=en) (Turn off everything except the clock and right click the chrome footer to disable it)
  - [Privacy Badger](https://chromewebstore.google.com/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp)
  - [Refined Github](https://chromewebstore.google.com/detail/refined-github/hlepfoohegkhhmjieoechaddaejaokhf)
  - [Unhook](https://chromewebstore.google.com/detail/unhook-remove-youtube-rec/khncfooichmfjbepaaaebmommgaepoid)
