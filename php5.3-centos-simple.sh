#!/bin/bash
if [ -z $script_url ];then
    export script_url="https://github.com/k1LoW/sakuravps/raw/master/"
fi

#common
curl $script_url/common.sh|bash
#iptables
curl $script_url/iptables-simple.sh|bash
/etc/init.d/iptables save
#apache php
curl $script_url/apache-php5.3.sh|bash
