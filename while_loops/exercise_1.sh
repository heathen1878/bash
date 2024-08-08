#!/bin/bash

REGEX_MATCH='^[y|Y|yes|Yes]+$'
CORRECT="n"
while ! [[ "${CORRECT}" =~ ${REGEX_MATCH} ]]
do
    read -r -p "Enter your name: " NAME
    read -r -p "Is ${NAME} correct? " CORRECT
done