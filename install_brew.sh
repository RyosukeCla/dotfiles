#!/bin/bash
#
# @(#) update.sh  - update dotfiles
#

DOT_DIR="$HOME/.config/ryosuke-dotfiles"

main() {
	echo "run install_brew.sh ..."
  if hash brew 2>/dev/null; then
    echo "brew has already installed"
  else
    # install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

	cd ${DOT_DIR}
  brew bundle
}

main