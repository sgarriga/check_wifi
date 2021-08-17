#!/bin/bash
#
cp ./check_wifi.sh /usr/local/bin
chown root:root /usr/local/bin/check_wifi.sh
chmod a+x /usr/local/bin/check_wifi.sh
(crontab -l 2>/dev/null; cat crontab.add) | crontab -
