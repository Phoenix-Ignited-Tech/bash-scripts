#!/bin/bash

# Check if the user provided a search phrase
if [ $# -eq 0 ]; then
    echo "Usage: $0 'search phrase'"
    exit 1
fi

# Assign the first argument to a variable
phrase="$1"

# Search through all .txt files in the current directory and subdirectories
grep -rnw --include="*.txt" . -e "$phrase"

# -r: recursive search
# -n: display line numbers
# -w: match whole words (optional, remove if not needed)
# --include="*.txt": only search .txt files
