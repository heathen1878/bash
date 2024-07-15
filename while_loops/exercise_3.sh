#!/bin/bash

read -r -p "How many lines would you like to see?" NO_OF_LINES

LINE_NUM=1
while read -r LINE && [ $LINE_NUM -le "$NO_OF_LINES" ]
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/passwd