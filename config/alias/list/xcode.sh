# #!/bin/bash

# XCODE CREATE
function xoto_xcodec() {
	echo "  "
	echo "what is the name of your project? "
	echo "---------------------------------- "
	echo "  "
	read varname
	echo "  "
	cp -a ~/Documents/igithub/util.toolbox/copytool.box/xcode/temp.ios/temp.project ./
	mv ./temp.project ./$varname
	cd $varname/project
	open project.xcodeproj
	echo "  "
	echo "DONE "
	echo "~~~~"
	echo "  "
}

# XCODE SIM
function xoto_xcodesim() {
	echo "  "
	echo "what is the path to be : "
	echo "------------------------------- "
	echo "  "
	read varname
	echo "  "
	ios-sim launch --devicetypeid "iPhone-X, 12.1" ./Build/Debug/$varname".app"
	echo "DONE "
	echo "~~~~"
	echo "  "
}