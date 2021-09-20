#!/bin/bash

date=$(echo $3 | sed s/-//)
game=$(echo $4 | awk '{print tolower($0)}')

if test "$1" == "--help"
then
    echo "Syntax:
    command [time] [AM/PM] [date] [game]
    Time Syntax: 12:00 AM/PM
    Date Syntax: 01-01
    Game Syntax: BlackJack/Roulette/HoldEm"
elif test "$game" == "roulette"
then
    echo -n "Date: " && echo $3
    echo $4
    cat /home/sysadmin/unit_3_hw/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$date* | grep "$1" | grep "$2" | awk -F" " '{print$1,$2,$5,$6}'
    echo "-------"
elif test "$game" == "blackjack"
then
    echo -n "Date: " && echo $3
    echo $4
    cat /home/sysadmin/unit_3_hw/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$date* | grep "$1" | grep "$2" | awk -F" " '{print$1,$2,$3,$4}'
    echo "-------"
elif test "$game" == "holdem"
then
    echo -n "Date: " && echo $3
    echo $4
    cat /home/sysadmin/unit_3_hw/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/$date* | grep "$1" | grep "$2" |awk -F" " '{print$1,$2,$7,$8}'
    echo "-------"
fi
