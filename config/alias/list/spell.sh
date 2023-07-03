#!/bin/bash

# SPELL CHECK ALL
function xoto_spellall() {
	misspell -w ./$1
}

# SPELL GIT
function xoto_spellgit() {
	github-spellcheck
}

# SPELL CHECK 1
function xoto_spell() {
	thishere=$1
	echo "${thishere}" | misspell -w -q
}

# SPELL CHECK 2
function xoto_spellcheck() {
	hunspell -d en_US ./$1
}
