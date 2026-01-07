.PHONY: osx homebrew homebrew-packages osx-config

osx: homebrew homebrew-packages osx-config

homebrew:
	command -v brew >/dev/null 2>&1 || (curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | /bin/bash)

homebrew-packages:
	brew bundle --file=.config/brew/Brewfile

osx-config:
	./.config/os/osx/configure.sh
