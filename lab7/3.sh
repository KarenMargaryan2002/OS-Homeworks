#!/bin/bash
index=1
while true; do
    square=$((index * index))
    echo $square
    if [ $square -gt 1000 ]; then
        break
    fi
    index=$((index + 1))
done
