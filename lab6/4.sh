#!/bin/bash

read -p "Enter a number: " num

if ((num % 2 == 0)) || ((num % 3 == 0)) || ((num % 5 == 0)); then
    echo "The number is a multiple of 2, 3, or 5."
else
    echo "The number is not a multiple of 2, 3, or 5."
fi
