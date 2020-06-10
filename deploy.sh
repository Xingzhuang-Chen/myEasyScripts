#!/bin/bash
# check authority
user=`whoami`
if [[ "$user" != "root" ]]
then
#    echo "$user"
    echo 'Please run with sudo.'
    exit 0
fi

# deploy
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

chmod +x sshs.sh
file_path=$script_path/sshs
read -p "Please input host local('q' to cancel):" host
if [[ "$host" != "q" ]]
then
    if [ -f $file_path ]
    then
        echo "$file_path exist. delete."
        rm $file_path
    fi
    sed "s/HOST/$host/g" sshs.sh >$file_path
    chmod +x $file_path
fi
