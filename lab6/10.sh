#!/bin/bash

invalid_input () {
    if [[ $1 =~ ^-?[[:digit:]]+$ ]]; then
        echo "$1 is an integer."
    else
        echo "$1 is not an integer."
        exit 1 
    fi

    if [[ $2 =~ ^[-+\*/**]$ ]]; then
        echo "$2 is a right operator."
    else
        echo "$2 is not a right operator."
        exit 1
    fi

    if [[ $3 =~ ^-?[[:digit:]]+$ ]]; then
        echo "$3 is an integer."
    else
        echo "$3 is not an integer."
        exit 1
    fi

    if [[ $4 ]]; then
        echo "Too many variables."
        exit 1
    fi
}

answer(){

    result=$(($1 $2 $3))
    echo "Result: $result"

}

read -p "Enter: " 
# ներմուծված տվյալները պահվում են REPLY փոփոխականի մեջ

echo $REPLY
invalid_input $REPLY

answer $REPLY