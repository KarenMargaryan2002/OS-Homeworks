#!/bin/bash

# Check if a file name is provided
if [[ -z "$1" ]]; then
    echo "Error: Please provide a file name as an argument."
    exit 1
fi

# Check if the file exists
if [[ ! -f "$1" ]]; then
    echo "Error: File '$1' does not exist."
    exit 1
fi

# Check if the file is readable
if [[ ! -r "$1" ]]; then
    echo "Error: File '$1' is not readable."
    exit 1
fi

# File exists and is readable, copy the content
cat "$1"

echo "File content copied successfully."
