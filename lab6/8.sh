#!/bin/bash

read -s -p "Enter a word: " secret

if [[ $secret == "Secret" ]]; then
    echo -e "\nYou entered the secret word."
else
    echo -e "\nIncorrect word."
fi