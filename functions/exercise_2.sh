#!/bin/bash

function file_count() {
    local DIRECTORY=""
    local COUNT=0

    DIRECTORY=$1

    if [ -d "$DIRECTORY" ]
    then
        echo "${DIRECTORY}:"
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

# use the function above to count the number of files in the directory
DIRECTORIES=(/etc /var /usr/bin)

for VALUE in "${DIRECTORIES[@]}"
do
    file_count "$VALUE"
done
