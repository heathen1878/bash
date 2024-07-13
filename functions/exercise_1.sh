#!/bin/bash

function file_count() {
    local DIRECTORY=""
    local COUNT=0

    DIRECTORY=$1

    if [ -d "$DIRECTORY" ]
    then
        FILES=$(find "$DIRECTORY" -maxdepth 1 -mindepth 1 -type f -printf '%f\n')
        for FILE in $FILES
        do
            echo "$FILE" > /dev/null
            ((COUNT++))
        done
        echo $COUNT
    else
      echo "${DIRECTORY} is not a directory"
    fi
}

# Get the working directory; though this is simply .
SCRIPT_DIRECTORY=$(dirname "$0")

# use the function above to count the number of files in the directory
file_count "$SCRIPT_DIRECTORY"