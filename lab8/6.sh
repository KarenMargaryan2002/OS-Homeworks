#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    exit 1
fi

num1=$1
num2=$2

if ! [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter numeric values."
    exit 1
fi

sum=$((num1 + num2))
echo "Sum: $sum"
