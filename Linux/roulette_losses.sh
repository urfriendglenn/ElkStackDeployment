#!/bin/bash
# Takes three arguments: Time (12:00:00), AM/PM, File Name

echo -n "Date: " && echo $3 | awk -F "_" '{print$1}'
grep "$1 $2" $3 | awk -F" " '{print$1,$2,$5,$6}'
echo "-------"
