#!/usr/bin/env bash

#This script merge two file with domains

declare -A array
while read -r i; do
        [[ "$i" =~ ^#.*$ ]] && continue
        array[$i]=1
done <$1

while read -r i; do
        [[ "$i" =~ ^#.*$ ]] && continue
        array[$i]=1
done <$2

for i in ${!array[@]}; do
        echo ${i};
done