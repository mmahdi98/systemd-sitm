#!/bin/bash
# Written by mmahdi98 under GNU Affero General Public LICENSE
if test -f /root/.ip.txt; then
	if [[ $(tail -1 /root/.ip.txt) == 'on_progress' ]]; then
		exit 0;
	fi
	echo 'on_progress' >> /root/.ip.txt; 
	/usr/bin/ip monitor address dev enp2s0 > /root/.ip.txt;
else
	ip address show dev enp2s0 > /root/.ip.txt;
fi
sshpass -p 'MMMomen@#$' scp .ip.txt mmmomenzadeh@172.16.20.5:/home/mmmomenzadeh/
exit 0;
