#!/bin/bash

echo "Folder Maker v1.0"
echo "By DemonKat"

name=$1
numFolders=$2

if [ "$1" == "" ] || [ "$2" == "" ]
then
    echo "ERROR - requires foldername and number of folders as arguments."
    echo "Usage: $ foldermaker <directoryName> <numberOfFolders>"
    exit 1
else
    for (( i=1; i<=numFolders; i++ ))
    do
        mkdir "$name"_"$i"
    done

    echo ""
    echo "Folders created: "
    ls
    echo ""
fi
