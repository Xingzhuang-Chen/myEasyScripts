#!/bin/bash
# Please use source or . command prefix
if [[ "$0" != "bash" ]]
then
	echo "Please use source or . command prefix"
else
	proxyed=`env|grep all_proxy`
	if [ -z $proxyed ]
	then
		export all_proxy="http://localhost:8118"
		echo $all_proxy
		echo "proxy on"
	else
		unset all_proxy
		echo "proxy off"
	fi
fi
