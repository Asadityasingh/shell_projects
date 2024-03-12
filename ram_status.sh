#!/bin/bash
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=1000

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM is running low $FREE_SPACE"
else
	echo "Ram Space is sufficient $FREE_SPACE"
fi
