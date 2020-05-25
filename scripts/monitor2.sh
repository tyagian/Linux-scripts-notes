#!/bin/bash

echo "CPU and Memory Resources"

CPU=top | awk 'FNR==3 {print $2}'
RAM= top | awk 'FNR==3 {print $8}'
rx=ifconfig eth0 | awk 'FNR==8 {print $2}'
tx=ifconfig eth0 | awk 'FNR==8 {print $6}'

if [ping -c1 www.google.com 2>&1]; then
        echo "Internet is up"
else
        echo "Internet is down"

echo"CPU Usage:$CPU"
echo"Free Ram:$RAM"

fi
done
