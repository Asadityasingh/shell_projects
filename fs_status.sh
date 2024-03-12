#!/bin/bash
FU=$(df -H |egrep -v "Filesystem|tmpfs" | grep "nvme0n1p1" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 50 ]]
then
	echo "Warning, disk space is low"
else 
	echo "all good"
fi
