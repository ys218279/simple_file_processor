#!/bin/bash

INFILE="$1"

while IFS= read -r LINE
do
    echo "$LINE"
done < "$INFILE"
