#!/bin/bash
for file in "$@"; do
    if [ -e "$file" ]; then
        if [ -r "$file" ]; then
            echo "$file: File exists and is readable."
        else
            echo "$file: File exists but is not readable."
        fi
    else
        echo "$file: File does not exist."
    fi
done
