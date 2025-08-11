#!/bin/bash

clear
if [ -e /home/ec2-user/test ]
then
	echo "fie exist"
else
	echo "file does not exist"
fi

