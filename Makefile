info:
	@grep ^[a-z] Makefile | cut -d: -f1

setup-bash:
	ln -f -s "$(shell pwd)/bash/.bash_profile" "${HOME}/.bash_profile"
	ln -f -s "$(shell pwd)/bash/.bashrc" "${HOME}/.bashrc"

setup-macos:
	bash "$(shell pwd)/macos/brew-install.sh"
	bash "$(shell pwd)/macos/brew-cask-install.sh"
