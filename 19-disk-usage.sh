#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, current usage: $USAGE \n"
    fi
done <<< $DISK_USAGE

echo -e "MESSAGE: $MESSAGE"

echo "$MESSAGE" | mail -s "Disk Usage Alert" soumyamunni510@gmail.com

# echo "body" | mail -s "subject" to-address