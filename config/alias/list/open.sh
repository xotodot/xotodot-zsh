#!/bin/bash

# OPEN ALL FILES
function xoto_ofiles() {
	CUR_DIR=$(pwd)
	echo ""
	echo "what file would you like to open?"
	read varname1
	echo ""
	echo "maxdepth of your search in directories? (start with 2)"
	read varname2
	echo ""
	echo "finding all files"
	echo "---------------"
	for i in $(find . -maxdepth $varname2 -iname "$varname1"); do
		echo "$i"
		echo "--------------->"
		open $i
		cd "$CUR_DIR"
	done
	echo "  "
	echo "OPEN DONE "
	echo "~~~~"
	echo "  "
}
