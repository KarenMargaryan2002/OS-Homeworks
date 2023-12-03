#!/bin/bash

read -p "Enter a file name: " filename

# Validate the filename
# if [[ "$filename" =~ ^[a-z0-9]*$ ]]; then

if [[ "$filename" =~ ^[a-zA-Z0-9_.\-\]*$ ]]; then
    # Check if the file exists
    if [ -e "$filename" ]; then
        echo "The file '$filename' already exists."
    else
        touch "$filename"
        echo "The file '$filename' has been created."
    fi
else
    echo "Invalid filename. It may contain letters, numbers, -, ., _ symbols."
fi
