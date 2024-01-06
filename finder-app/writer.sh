#!/bin/bash

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Assign the arguments to variables
writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write content to the file, overwriting if it exists
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create the file '$writefile'."
    exit 1
else
    echo "File '$writefile' created successfully with content: '$writestr'."
fi
