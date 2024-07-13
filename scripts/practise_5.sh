#!/bin/bash

LIST=(man bear pig dog cat sheep)

for VALUE in "${LIST[@]}"
do
    printf "%s\n" "$VALUE"
done