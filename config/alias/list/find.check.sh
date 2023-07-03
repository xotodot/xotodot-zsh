#!/bin/bash

# CHECK LAST 20 FILES CREATED
function ba.check20() { 
	find . -cmin -20 
};

# CHECK LAST 10 FILES CREATED
function ba.check10() { 
	find . -cmin -10 
};

# CHECK LAST 30 FILES CREATED
function ba.check30() { 
	find . -cmin -30 
};

# CHECK LAST 5 FILES CREATED
function ba.check5() { 
	echo find . -cmin -5 find . -cmin -5 
};