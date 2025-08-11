#!/bin/bash
a=`date |awk  '{print $1}'`
if [ "$a" == Mon ]
then
	echo Today is workinng day
else
	echo  holiday
fi

