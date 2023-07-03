#!/bin/bash

# OPEN RENAME
function xoto_brename() { echo ''open -a "A Better Finder Rename 10" }

# UNMOUNT SHUTDOWN
function xoto_off() {
	echo osascript -e 'tell application "System Events" to shut down'
	osascript -e 'tell application "System Events" to shut down'
}

# OPEN DEAMON
function xoto_deamon() {
	launchctl list
}

# WRITE TO FILE
function xoto_write() {
	write=$1
	touch ./text.txt
	echo ${write} >>./text.txt
}
