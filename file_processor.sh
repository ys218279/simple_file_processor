#!/bin/bash

#Create assets dir
CURRENT_DIR=$(pwd)
echo -e $CURRENT_DIR '\n'
mkdir -p "${CURRENT_DIR}/assets"

#Parse JSON file
JSON_FILE="dependencies.json"
CONTENT=$(jq -r '.dependencies[] | to_entries[]' -c "$JSON_FILE")

#Create sub dir and download files
for i in $CONTENT; do
    dependency=$(echo $i | jq -r '.key')
    url=$(echo $i | jq -r '.value')
    echo -e "$dependency : $url" '\n'
    #Create sub_dir
    file_path="${CURRENT_DIR}/assets/${dependency}"
    echo $file_path
    mkdir -p "${file_path}"
    #downlaod files in folder
    wget "$url" -O "${file_path}/$(basename "$url")"
done

