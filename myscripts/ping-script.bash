#!/bin/bash
# this  script will  ping a remote host  and notify 

hosts=("google.com" "github.com" "amazon.com")


# Loop through each host in the array
for host in "${hosts[@]}"; do
    ping -c1 "$host" &> /dev/null
    if [ $? -eq 0 ]; then
        echo "$host is OK"
    else
        echo "$host is NOT OK"
    fi
done



