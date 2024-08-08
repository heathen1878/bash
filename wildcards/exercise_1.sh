#!/bin/bash

declare DIRECTORY=""
declare FILE_PATTERN=""

DIRECTORY="."
FILE_PATTERN=".*/[a-z]*\.jpeg"
TODAYS_DATE=$(date +%Y%m%d)

FILES=$(find "$DIRECTORY" -maxdepth 1 -mindepth 1 -regex "$FILE_PATTERN" -type f -printf '%f\n')

for FILE in $FILES
do
    echo "Prefixing $TODAYS_DATE to $FILE"
    mv "$FILE" "$TODAYS_DATE$FILE"
done