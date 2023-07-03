#!/bin/bash

# UPDATE DARK
function xoto_theme_dark() {
	cd ~/Documents/igithub/xotopio.dark
	vsce package
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "xotopio dark theme update"
	git push origin development
	vsce publish minor
}

# UPDATE LIGHT
function xoto_theme_light() {
	cd ~/Documents/igithub/xotopio.light
	vsce package
	CURRENT=$(pwd)
	BASENAME=$(basename "$CURRENT")
	git init && git add . && git commit -m "xotopio light theme update"
	git push origin development
	vsce publish minor
}
