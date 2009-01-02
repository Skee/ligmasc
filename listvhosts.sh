#!/bin/sh
for i in `ls /srv/http/vhosts/`; 
	do if [ -f /srv/http/vhosts/$i/lighty.conf ]; then 
		echo "\$HTTP[\"host\"] == \"$i\" { include \"/srv/http/vhosts/$i/lighty.conf\" }"; 
	fi; 
done
