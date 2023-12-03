#!/bin/bash

for file in "$@"; do
    if [[ -r $file ]]; then
        shortest=""
        length=9999
        while read -r word; do
            if (( ${#word} < length && ${#word}!=0)); then
                shortest=$word
                length=${#word}
            fi
        done < "$file"
        echo "File: $file | Shortest word: '$shortest' | Length: $length"
    else
        echo "$file: File not readable"
    fi
done
