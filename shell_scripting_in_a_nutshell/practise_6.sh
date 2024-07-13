#!/bin/bash

read -r -p "File or Directory to evaluate" "RESOURCE_TO_CHECK"

OUTPUT=$(file -b "$RESOURCE_TO_CHECK" | cut -c 1-4)

echo "$OUTPUT"

case $OUTPUT in
    char)
        echo "$RESOURCE_TO_CHECK is a character special file"
        ls -l "$RESOURCE_TO_CHECK"
    ;;
    regu)
        echo "$RESOURCE_TO_CHECK is a regular file"
        ls -l "$RESOURCE_TO_CHECK"
    ;;
    dire)
        echo "$RESOURCE_TO_CHECK is a directory"
        ls -l "$RESOURCE_TO_CHECK"
    ;;
    *)
        echo "$RESOURCE_TO_CHECK is something else"
        ls -l "$RESOURCE_TO_CHECK"
    ;;
esac