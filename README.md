# Dotfiles

This repo contains my personal configuration along with documentation for any tools or preferences I have that must be manually setup. Largely based off of [this](https://github.com/endocrimes/dotfiles). Focuses on configuring over provisioning (but does some provisioning e.g. `brew`).

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

TODO

- Rectangle pro
- Vivid
- Timery
- Menu world time
- BetterDisplay
- Contexts
- Logi Options+
- Obsidian

### Personal Software

TODO

- Cockatrice
- Guitar Pro 8
- Logic Pro
- MuseScore 4
- MyWhoosh

## TODO

- [ ] Setup zshrc private on new mac
- [ ] ghostty config from endocrimes dotfiles
- [ ] Grab scripts from [here](https://evanhahn.com/scripts-i-wrote-that-i-use-all-the-time/)
