#!/bin/bash

# PNG TO FOLDER ICONS
function xoto_icon() {
	echo ""
	echo "Saving file to icns.imports"
	cp $(find ./ -name \*.png | head -n 1) ~/Documents/igit/igithub/utility-list/util-toolbox/mac.app.tools/finder.icons/icns.imports
	var1=$(du -a $directory | awk '{print $2}' | grep './*.png$' | head -n 1)
	var2=$(pwd | grep -o '[^/]*$')
	echo ""
	echo "Assigning >> ${var1} to >> ${var2}"
	echo ""
	fileicon set ./ ${var1}
	rm -r ${var1}
}
