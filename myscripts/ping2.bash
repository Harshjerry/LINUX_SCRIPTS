#!/bin/bash


IP_FILE="/home/ec2-user/myscripts/myhost"
for ip in $(cat $IP_FILE)
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
		echo $ip ping passed
	else
		echo $ip ping failed
	fi
done

