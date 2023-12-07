#!/bin/bash

read -p "Enter the name of the month: " month

case $month in
    "January" | "March" | "May" | "July" | "August" | "October" | "December")
        echo "31 days"
        ;;
    "April" | "June" | "September" | "November")
        echo "30 days"
        ;;
    "February")
        echo "28 or 29 days"
        ;;
    *)
        echo "Invalid month"
        ;;
esac
