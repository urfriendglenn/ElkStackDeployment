#!/bin/bash

date=$(echo $3 | sed s/-//)

if test "$1" == "--help"
then
    echo "Syntax:
    command [time] [AM/PM] [date]
    Time Syntax: 12:00 AM/PM
    Date Syntax: 01-01"
else
    echo -n "Date: " && echo $3
    cat /home/sysadmin/unit_3_hw/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$date* | grep "$1" | grep "$2" | awk -F" " '{print$1,$2,$5,$6}'
    echo "-------"
fi
