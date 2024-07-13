#!/bin/bash

FILE_TO_CHECK="$1"

# redirect stdout and stderr to null
# we only want to know whether the 
# command succeeds or fails
cat "$FILE_TO_CHECK" > /dev/null 2>&1
RETURN_CODE=$?

if [ "$RETURN_CODE" == 0 ]
then
    printf "cat %s succeeded" "$FILE_TO_CHECK"
    exit 0
else
    printf "cat %s failed" "$FILE_TO_CHECK"
    exit 1
fi