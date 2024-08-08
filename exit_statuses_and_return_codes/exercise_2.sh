#!/bin/bash

RESOURCE_TO_CHECK=("$@")

for RESOURCE in "${RESOURCE_TO_CHECK[@]}"
do
    OUTPUT=$(file -b "$RESOURCE" | cut -c 1-4)

    case $OUTPUT in
        regu)
            echo "$RESOURCE is a regular file"
            exit 0
        ;;
        dire)
            echo "$RESOURCE is a directory"
            exit 1
        ;;
        *)
            echo "$RESOURCE is something else"
            exit 2
        ;;
    esac
done