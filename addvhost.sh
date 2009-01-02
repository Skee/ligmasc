#!/bin/sh
vhost=$@
# do some sanity checking here.

cp -R skel $vhost

# replace placeholder with actual hostname
sed -e "s/--vhost--/$vhost/g" $vhost/lighty.conf.in > $vhost/lighty.conf

# delete infiles
rm $vhost/lighty.conf.in
