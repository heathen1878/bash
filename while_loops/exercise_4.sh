#!/bin/bash

REGEX_MATCH='^[q|Q]+$'
ANSWER=""

while ! [[ "${ANSWER}" =~ ${REGEX_MATCH} ]]
do
    read -r -p "Please select an option: 
    1. Disk Usage
    2. Uptime
    3. Logged on users
    4. quit (q or Q)
     " ANSWER
    case $ANSWER in
        1)
            df -h
            echo ""
        ;;
        2)
            uptime
            echo ""
        ;;
        3)
            who
            echo ""
        ;;
        q)
            echo "Goodbye!"
            echo ""
        ;;
        *)
            echo "Invalid option"
        ;;
    esac
done