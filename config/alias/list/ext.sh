#!/bin/bash

# EXT CP
function xoto_extcp() {
	echo "  "
	echo "what do you want the dir to be : "
	echo "------------------------------- "
	echo "  "
	read varname
	echo "  "
	mkdir $varname
	thishere=$1
	find . -name "*.${thishere}" -type f -exec cp {} "./$varname" \
	echo "  "
	echo "DONE "
	echo "~~~~"
	echo "  "
}

# EXT CH
function xoto_extch() {
	thishere=$1
	echo "  "
	echo "what ext to change : "
	echo "------------------------------- "
	echo "  "
	read varname
	echo "  "
	for f in *.$1; do
		[ -f "$f" ] && mv -v "$f" "${f%$1}$varname"
	done
	echo "  "
	echo "DONE "
	echo "~~~~"
	echo "  "
}

# EXT MV
function xoto_extmv() {
	echo "  "
	echo "what do you want the dir to be : "
	echo "------------------------------- "
	echo "  "
	read varname
	echo "  "
	mkdir $varname
	thishere=$1
	find . -name "*.${thishere}" -type f -exec mv {} "./$varname" \
	echo "  "
	echo "DONE "
	echo "~~~~"
	echo "  "
}
