#!/bin/bash
while read -r i; do
	[[ "$i" =~ ^#.*$ ]] && continue
	host $i | awk '/has address/ { print $4 }';
done <$1