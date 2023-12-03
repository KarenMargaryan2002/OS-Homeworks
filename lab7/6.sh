#!/bin/bash

# Create a file containing the names of text files
ls ~/Desktop/lab7/*.sh > file_names.txt

# Number the filenames and print them using a while loop
count=1
while read -r filename; do
    echo "File $count: $filename"
    count=$((count + 1))
done < file_names.txt
