#!/bin/bash

count=0
while [ $count -le 20 ]; do
    echo $count
    count=$((count + 2))
done