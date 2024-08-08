#!/bin/bash

RESOURCE_TO_CHECK=("$@")

for RESOURCE in "${RESOURCE_TO_CHECK[@]}"
do
    OUTPUT=$(file -b "$RESOURCE" | cut -c 1-4)

    case $OUTPUT in
        char)
            echo "$RESOURCE is a character special file"
            ls -l "$RESOURCE"
        ;;
        regu)
            echo "$RESOURCE is a regular file"
            ls -l "$RESOURCE"
        ;;
        dire)
            echo "$RESOURCE is a directory"
            ls -l "$RESOURCE"
        ;;
        *)
            echo "$RESOURCE is something else"
            ls -l "$RESOURCE"
        ;;
    esac
done