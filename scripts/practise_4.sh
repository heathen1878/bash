#!/bin/bash

FILE_TO_CHECK="/etc/shadow"

if [ -e "$FILE_TO_CHECK" ]
then
    echo "Shadow passwords are enabled"
    if [ -w "$FILE_TO_CHECK" ]
    then
        echo "You have access to $FILE_TO_CHECK"
    else
        echo "You do not have access to $FILE_TO_CHECK"
    fi
fi