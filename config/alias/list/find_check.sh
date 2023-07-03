#!/bin/bash

# CHECK LAST 10 FILES CREATED
function xoto_check10() { 
	find . -cmin -10
}
