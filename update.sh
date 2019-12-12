#!/bin/bash
#
# @(#) update.sh  - update dotfiles
#

DOT_DIR="$HOME/.config/ryosuke-dotfiles"

main() {
	echo "run update.sh ..."
	cd ${DOT_DIR}
	git pull origin master
}

main