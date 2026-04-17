.PHONY: osx homebrew homebrew-packages other-setup osx-config tpm

osx: homebrew homebrew-packages other-setup osx-config tpm

homebrew:
	command -v brew >/dev/null 2>&1 || (curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | /bin/bash)

homebrew-packages:
	brew bundle --file=.config/brew/Brewfile --no-upgrade

other-setup:
	./.config/Code/install.sh

osx-config:
	./.config/os/osx/configure.sh

tpm:
	test -d ~/.tmux/plugins/tpm || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	~/.tmux/plugins/tpm/bin/install_plugins
