#!/bin/sh

LOGFILES="/var/log/lastlog /var/log/wtmp"
touch $LOGFILES
chmod 664 $LOGFILES
chown root:utmp $LOGFILES
mkdir -p /var/log/fsck
exit 0
