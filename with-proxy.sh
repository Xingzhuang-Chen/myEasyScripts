#!/bin/bash
if [ -z '$1' ]
then
	echo "Need a sub-command"
else
	export all_proxy="http://localhost:8118"
	echo "proxy on"
	echo $1
	eval $1
fi
	

