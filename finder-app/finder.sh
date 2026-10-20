#!/bin/bash 

#Check both args are provided 
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required."
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

#Store args in vars
filesdir="$1"
searchstr="$2"

#Check if directory exists
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory."
    exit 1
fi

#Count all files recursively
numfiles=$(find "$filesdir" -type f | wc -l)

#Count lines containing search string 
numlines=$(grep -r -F -h -- "$searchstr" "$filesdir" | wc -l)

#echoooo
echo "The number of files are $numfiles and the number of matching lines are $numlines"