#!/bin/bash

websites=(www.staples.com www.google.com)
for i in ${websites[@]}
do
	EDGEKEY=$(dig $i | grep -i edgekey)
	EDGESUIT=$(dig $i | grep -i edgesuit)
	FREEFLOW=$(dig $i | grep -i freeflow)
	[[ ! -z "$EDGEKEY" ]] && echo "URL: $i is edgekey enabled"
	[[ ! -z "$EDGESUIT" ]] && echo "URL: $i is edgesuit enabled"
	[[ ! -z "$FREEFLOW" ]] && echo "URL: $i is freeflow enabled"
	[[ -z "$EDGEKEY" ]] && [[ -z "$EDGESUIT" ]] && [[ -z "$FREEFLOW" ]] && echo "URL: $i is unrecognized"

done
