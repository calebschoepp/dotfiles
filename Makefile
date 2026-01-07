.PHONY: osx homebrew homebrew-packages osx-config

osx: homebrew homebrew-packages osx-config

homebrew:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

homebrew-packages:
	brew bundle --file=.config/brew/Brewfile

osx-config:
	./.config/os/osx/configure.sh
