#!/bin/bash

# FOR LOOP
function xoto_forloop_ex_() {
	counter=1
	for value in {10}; do
		send Hi `$1` "hello how are you tonight? "
	done
	echo All done
}

# FOR LOOP1
function xoto_forloop_ex_1() {
	for i in $(ls); do
		echo item: $i
	done
}

# FOR LOOP2
function xoto_forloop_ex_2() {
	for i in $(seq 1 10); do
		echo $i
	done
}

# FOR LOOP3
function xoto_forloop_ex_3() {
	COUNTER=0
	while [ $COUNTER -lt 10 ]; do
		echo The counter is $COUNTER
		let COUNTER=COUNTER+1
	done
}

# FOR LOOP4
function xoto_forloop_ex_4() {
	COUNTER=20
	until [ $COUNTER -lt 10 ]; do
		echo COUNTER $COUNTER
		let COUNTER-=1
	done
}
