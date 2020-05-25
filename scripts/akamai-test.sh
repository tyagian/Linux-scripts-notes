#!/bin/bash

url = (www.staples.com, www.ebay.com, www.att.net)

for i in ${url[@]}; 

do

if [dig $url| grep "*.edgekey.net"]; 
then 
    echo "DNS on ESSL"

elif (dig $url| grep "*.edgesuit.net");
then 
    echo "DNS on Freeflow"

else 
    echo "DNS not running on Akamai Server"

fi 

done
