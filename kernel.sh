#!/bin/bash

if [ ! -d "$TMPDIR" ]; then
	echo "please start docker with a tmpfs like this: `--tmpfs /$TMPDIR:rw,nosuid,nodev,exec,size=8g`"
	exit 1
fi
/linux/linux rootfstype=hostfs rw quiet eth0=slirp,,/usr/bin/slirp-fullbolt mem=$MEM init=/init.sh 2> /tmp/kernel.log