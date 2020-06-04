#!/bin/bash
script_path=/usr/bin

chmod +x switch-proxy.sh
file_path=$script_path/switch-proxy
if [ -f $file_path ]
then
    echo "$file_path exist. delete."
    rm $file_path
fi
ln -s `pwd`/switch-proxy.sh $file_path

chmod +x with-proxy.sh
file_path=$script_path/with-proxy
if [ -f $file_path ]
then
    echo "$file_path exist. delete."
    rm $file_path
fi
ln -s `pwd`/with-proxy.sh $file_path

chmod +x condaenv.sh
file_path=$script_path/condaenv
if [ -f $file_path ]
then
    echo "$file_path exist. delete."
    rm $file_path
fi
ln -s `pwd`/condaenv.sh $file_path
