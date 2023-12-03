#!/bin/bash

invalid_input () {
    if [[ $1 =~ ^-?[[:digit:]]+$ ]]; then
        echo "$1 is an integer."
    else
        echo "$1 is not an integer."
    fi

}

read -p "Enter a number: " num
read -p "Enter the lower limit of the range: " lower
read -p "Enter the upper limit of the range: " upper

invalid_input $num
invalid_input $lower
invalid_input $upper


if ((num >= lower)) && ((num <= upper)); then
    echo "The number is in the specified range."
else
    echo "The number is outside the specified range."
fi