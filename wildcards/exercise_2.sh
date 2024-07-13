#!/bin/bash

declare DIRECTORY=""
declare FILE_PATTERN=""
declare TODAYS_DATE=""

DIRECTORY="."
TODAYS_DATE=$(date +%Y%m%d)

read -r -p "Please enter a file extension: [jpeg]" FILE_EXTENSION
FILE_EXTENSION=${FILE_EXTENSION:-jpeg}
echo "$FILE_EXTENSION"

read -r -p "Please enter a file prefix: [$TODAYS_DATE]" FILE_PREFIX
FILE_PREFIX=${FILE_PREFIX:-$TODAYS_DATE}
echo "$FILE_PREFIX"

FILE_PATTERN=".*/[a-z_]*\.$FILE_EXTENSION"

FILES=$(find "$DIRECTORY" -maxdepth 1 -mindepth 1 -regex "$FILE_PATTERN" -type f -printf '%f\n')

for FILE in $FILES
do
    echo "Prefixing $TODAYS_DATE to $FILE"
    mv "$FILE" "$TODAYS_DATE$FILE"
done