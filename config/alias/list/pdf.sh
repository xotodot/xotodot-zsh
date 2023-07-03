#!/usr/bin/bash

# CHECK PDF
function xoto_pdfs() {
	find . -iname '*.pdf' | while read filename; do
		echo -e "\033[34;1m>> doc:\033[33;1m $filename\033[0m"
		pdftotext -q -enc ASCII7 "$filename" "$filename.new.pdf"
		grep -s -H --color=always -i $1 "$filename.new.pdf"
		rm -f "$filename.new.pdf"
	done
}
