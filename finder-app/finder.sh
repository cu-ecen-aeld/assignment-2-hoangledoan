#!/bin/bash

# Check if the required parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

# Assign the arguments to variables
filesdir="$1"
searchstr="$2"

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory."
    exit 1
fi

# Count the number of files and matching lines
num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the results
echo "The number of files is $num_files and the number of matching lines is $num_matching_lines."
