#!/bin/usr/bash


#date=$1
date=$(date +%d-%m-%y)

echo the date is ${date}
echo the day is ${date%%-*}
month=${date%-*}
echo the month is ${month#*-}
#year=${date}
echo the year is ${date##*-}
