#!/bin/bash

# UPDATE ALL
function xoto_updateall() {
	echo "brew list and updates"
	echo " -----------------"
	echo " "
	brew list
	sudo brew update
	sudo brew cask update
	echo " "
	echo "antigen list and updates"
	echo " -----------------"
	echo " "
	sudo antigen update
	echo " "
	echo "gem list and updates"
	echo " -----------------"
	echo " "
	gem list
	sudo gem update
	echo " "
	echo "ZSH updates"
	echo " -----------------"
	echo " "
	upgrade_oh_my_zsh
	echo " "
	echo "npm list and updates"
	echo " -----------------"
	echo " "
	npm list -g --depth=0
	sudo npm update -g
	echo " "
	echo " -----------------"
	echo "MORE TO CHECK "
	echo " -----------------"
	echo " "
	sudo npm-check -u -g
	echo " "
	echo "DONE ~"
	echo " "
	echo " "
	echo " "
}
