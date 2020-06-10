#!/bin/bash
if [ -z $1 ]
then
    echo "Need a argument Port:$1"
    exit 1
else
    echo "connect HOST:$1"
    ssh HOST -p $1
    exit 0
fi
