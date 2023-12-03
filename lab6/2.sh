#!/bin/bash

read -p "Enter a number: " num

if ((num > 0)); then
    echo "The number is positive."
elif ((num < 0)); then
    echo "The number is negative."
else
    echo "The number is 0."
fi
