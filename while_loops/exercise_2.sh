#!/bin/bash

LINE_NUM=1
while read -r LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
done < /etc/passwd