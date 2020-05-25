#!/bin/bash

url=(www.staples.com www.google.com www.ebay.com www.bestbuy.com www.us.bestbuy.com)
for i in ${url[@]}
do
	EDGEKEY=$(dig $i | grep -i edgekey)
	EDGESUIT=$(dig $i | grep -i edgesuit)
	[[ ! -z "$EDGEKEY" ]] && echo "URL: $i using ESSL"
	[[ ! -z "$EDGESUIT" ]] && echo "URL: $i using FREEFLOW"
	[[ -z "$EDGEKEY" ]] && [[ -z "$EDGESUIT" ]] && echo "URL: $i not an Akamai customer"

done
