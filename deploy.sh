#!/bin/bash
script_path=/usr/bin

chmod +x switch-proxy.sh
ln -s `pwd`/switch-proxy.sh $script_path/switch-proxy

chmod +x with-proxy.sh
ln -s `pwd`/with-proxy.sh $script_path/with-proxy
