#!/bin/bash

read -p "Enter the first number: " num1
read -p "Enter the operation (+, -, *, /, **): " operation
read -p "Enter the second number: " num2

case $operation in
    "+")
        result=$((num1 + num2))
        ;;
    "-")
        result=$((num1 - num2))
        ;;
    "*")
        result=$((num1 * num2))
        ;;
    "/")
        result=$((num1 / num2))
        ;;
    "**")
        result=$((num1 ** num2))
        ;;
    *)
        echo "Invalid operation"
        exit 1
        ;;
esac

echo "Result: $result"
