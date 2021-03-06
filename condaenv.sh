#!/bin/bash
if [[ "$0" != "bash" ]]
then
        echo "Please use source or . command prefix"
else
	env_list=`conda env list|grep ^[^#]|awk '{print $1}'`
	env_split=(${env_list// / })
	for i in "${!env_split[@]}"; do
	    echo "$i. ${env_split[$i]}"
	done
	read -p 'Please chose a environment:' env_chose

	if [[ "${!env_split[@]}" =~ "$env_chose" ]];then
	    echo "Environment chage to ${env_split[$env_chose]}"
	    conda activate ${env_split[$env_chose]}
	else
	    echo "input ${env_split[$env_chose]} error"
	fi

	unset env_list env_split env_chose
fi
