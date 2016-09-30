#!/bin/bash
while read i;
do host $i | awk '/has address/ { print $4 }';
done <$1