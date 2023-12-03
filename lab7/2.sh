#!/bin/bash
number=0
until [ $number -gt 20 ]; do
    echo $number
    number=$((number + 2))
done
