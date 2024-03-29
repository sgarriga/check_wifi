#!/bin/bash
#
wspr=`pgrep wspr`
if [ -z "$wspr" ]
then
    IP=`ip route | grep default | cut -d " " -f 3`
    ping -c4 ${IP}  > /dev/null
    if [ $? != 0 ] 
    then
      echo "No network connection, restarting wlan0"
      /sbin/ifdown 'wlan0'
      sleep 5
      /sbin/ifup --force 'wlan0'
    fi
else
    echo WSPR running - deferring WIFI check
fi
