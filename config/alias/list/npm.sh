#!/bin/bash

# NPM APP
function xoto_npmapp() {
	cd /usr/local/lib/node_modules/npm-gui && npm-gui | open http://0.0.0.0:1337/
}

# NPM CV
function xoto_cv() {
	cd ~/Documents/igithub/util.resume
	npm start
}
