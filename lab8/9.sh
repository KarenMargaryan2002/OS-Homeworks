#!/bin/bash

sum=0

for arg in "$@"; do
    if [[ "$arg" =~ ^[0-9]+$ ]]; then
        sum=$((sum + arg))
    fi
done

echo "Sum of the numbers: $sum"
