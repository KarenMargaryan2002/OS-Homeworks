#!/bin/bash

count=0

for arg in "$@"; do
    if [[ "$arg" =~ ^[0-9]+$ && $((arg % 2)) -eq 0 ]]; then
        count=$((count + 1))
    fi
done

echo "Number of even numbers: $count"
