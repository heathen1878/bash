#!/bin/bash

function log_it() {
    local tag=""
    local message=""
    local process_id=""
    local severity=""
    local facility=""

    # this could be better with
    # getopts
    tag=$2
    message=$1
    process_id=$3
    facility=$4
    severity=$5

    logger -t "$tag" -i "$process_id" -p "$facility"."$severity" "$message"
}

log_it $RANDOM randomly $$ user info
log_it $RANDOM randomly $$ user info
log_it $RANDOM randomly $$ user info

