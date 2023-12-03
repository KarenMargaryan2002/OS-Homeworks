#!/bin/bash
while true; do
    echo "Enter an integer number, or enter q to quit:"
    read input
    if [ "$input" == "q" ]; then
        break
    fi
    
    if [[ ! $input =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter an integer."
        continue
    fi
    double=$((input * 2))
    echo "Double: $double"
done
