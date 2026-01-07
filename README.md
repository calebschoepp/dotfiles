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

## Productivity Software

TODO: Flesh out

- Rectangle pro
- Vivid
- Timery
- Menu world time
- BetterDisplay
- Contexts
- Logi Options+
- Obsidian
- ShurPlus
- Google Drive

### Personal Software

TODO: Flesh out

- Cockatrice
- Guitar Pro 8
- Logic Pro
- MuseScore 4
- MyWhoosh
- UaConnect

## Manual Mac configuration

TODO: Flesh out
TODO: Try to automate

- Mouse speed
- Tap to click

## Manual Google Chrome configuration

- Search shortcuts for github `g` and rust docs `r
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

## TODO

- [ ] Setup zshrc private on new mac
- [ ] ghostty config from endocrimes dotfiles
- [ ] Grab scripts from [here](https://evanhahn.com/scripts-i-wrote-that-i-use-all-the-time/)
