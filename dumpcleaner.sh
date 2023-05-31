#!/bin/bash

echo "enter dir boi:"
read dir
for file in "$dir"/*\ \{*\}\ \[*\]\ \[*\].txt; do
    #gbt sama make sed go brrrr
    name=$(echo "$file" | sed -E 's/^(.*) \[.*\] \[.*\].txt/\1/')

    if [[ -e "$file" ]]; then
        rm -f "${name} not found.txt" "${name} no hash.txt" "${name} decrypted.txt"
    fi
done

