#!/bin/bash

file_content=$(cat replacements.txt)

if [[ -z "$file_content" ]]; then
    echo "File is empty or unreadable."
else
    while IFS="=" read -r find replace; do
        # Trim leading/trailing spaces
        find=$(echo "$find" | sed 's/^[ \t]*//;s/[ \t]*$//')
        replace=$(echo "$replace" | sed 's/^[ \t]*//;s/[ \t]*$//')

        # Debugging output for find and replace
        echo "Debug: find='$find', replace='$replace'"

        # Perform the replacement
        find . -name "*.schema.json" -exec sed -i "s|$find|$replace|g" {} +

    done <<< "$(grep -v '^#' replacements.txt | grep -v '^$')"
fi
