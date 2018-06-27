#!/bin/sh

# File:           OOM_protect.sh
#
# Description:    Protect a critical application from being killed first by the Linux OOM Killer.
#
# Usage:          chmod 700 OOM_protect.sh
#                 sudo ./OOM_protect.sh
#
# Copyright:      Martin Latter, 20/06/2018
# Version:        0.03
# License:        GNU GPL version 3.0 (GPL v3); http://www.gnu.org/licenses/gpl.html
# Link:           https://github.com/Tinram/Linux-Scripts.git



#############################
# CONFIG
# set application path
#############################
APP=/usr/local/bin/gpggui   # set path to your app
#APP=/usr/bin/mysql         # mysql example, 'which mysql'
#############################


sysctl vm.oom_kill_allocating_task=1 # set OOM: culprit = first victim / avoid expensive tasklist scan


case "$APP" in

	*mysql*)
		PID=$(pgrep mysqld) ;; # MySQL daemon, not some other MySQL-related process

	*)
		$APP & export PID=$! ;;
esac


echo "PID: $PID"

echo -1000 > /proc/$PID/oom_score_adj # -1000 is exempt from OOM Killer

echo -n "OOM score of PID $PID: " && cat /proc/$PID/oom_score_adj # confirm
