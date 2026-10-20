#!/bin/bash

#check both args are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

#store args in vars
writefile="$1"
writestr="$2"

#extract the parent directory
writedir=$(dirname "$writefile")

#create directory if not there
if ! mkdir -p "$writedir"; then
    echo "Error: Could not create directory $writedir"
    exit 1
fi

#write the string into file 
if ! printf '%s\n' "$writestr" > "$writefile"; then
    echo "Error: Could not write to $writefile"
    exit 1
fi

#default 
exit 0