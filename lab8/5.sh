#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_file> <destination_file>"
    exit 1
fi

source_file=$1
destination_file=$2

if [ -e "$source_file" ] && [ -r "$source_file" ]; then
    while IFS= read -r line; do
        echo "$line" >> "$destination_file"
    done < "$source_file"
    echo "File copied successfully."
else
    echo "Source file does not exist or doesn't have read permission."
fi
