#!/bin/bash

while true; do
    echo "Please Select [0-3] or 0 to Quit"
    read -p "Enter selection [0-3] > "
    
    case $REPLY in
        0)
            echo "Program terminated."
            exit
            ;;
        1)
            echo "Copying list of files in /home/student directory."
            cp /home/student/* .
            ;;
        2)
            echo "Number of text files in /home/student directory: $(ls -l /home/student/*.txt | wc -l)"
            ;;
        3)
            echo "Working directory: $(pwd)"
            ;;
        *)
            echo "Invalid entry" >&2
            ;;
    esac
done
