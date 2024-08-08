#!/bin/bash

# Inline function
function show_usage() {
    echo -e "USAGE: ./script_with_parameters.sh -m \"Message\" -t \"Title e.g. Mr\" -s \"Surname\""
}

declare OPTARG=""
declare OPTIND=1
declare flag=""
declare MESSAGE=""
declare SALUTATION=""
declare SALUTATIONS=("Mr" "Mrs" "Miss" "Ms")
declare SURNAME=""

# Check for arguments
if (( $# == 0 ))
then
    echo "No Arguments defined"
    show_usage ""
    exit 1
fi

# Get the parameters passed into the script
while getopts "m:t:s:" flag
do
    case "${flag}" in
        m)
            MESSAGE="${OPTARG}"
        ;;
        t)
            SALUTATION="${OPTARG}"
        ;;
        s)
            SURNAME="${OPTARG}"
        ;;
        *)
            # Catch all
        ;;
    esac
done

# Shift the index after processing parameters
shift "$(( OPTIND - 1))"

# Check values have been passed in the parameters
if [ ${#MESSAGE} == 0 ]
then
    echo "Missing message"
    exit 1
fi

if [ ${#SALUTATION} == 0 ]
then
    echo "Missing salutation"
    exit 1
else
    MATCHED=false
    for VALUE in "${SALUTATIONS[@]}"
    do
        if [ "$VALUE" == "$SALUTATION" ]
        then
            MATCHED=true
        fi
    done
    if ! $MATCHED
    then
        echo "Saluations must be one of: ${SALUTATIONS[*]}"
        exit 1
    fi
fi

if [ ${#SURNAME} == 0 ]
then
    echo "Missing surname"
    exit 1
fi

# Code flow
echo "$MESSAGE, $SALUTATION $SURNAME"