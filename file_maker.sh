#!/bin/bash

# makes files in bulk

fileName="$1"
fileExt="$2"
numToMake="$3"


for (( i=1; i<=numToMake; i++ ))
do
    touch "$fileName"_"$i"."$fileExt"
done

echo "Files created."