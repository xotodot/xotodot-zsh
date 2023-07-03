#!/bin/bash

# WHATS THE TIME
function xoto_time() {
	now=$(date +"%T")
	echo "24 hour clock time > Current time : $now"
	now="$(date +"%r")"
	echo "12 hour clock time > Current time : $now"
}
