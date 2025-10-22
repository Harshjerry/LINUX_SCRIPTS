#!/bin/bash

DIR="/path/to/your/directory"

# Get all files in the directory
files=("$DIR"/*)

# Loop over consecutive file pairs
for ((i=0; i<${#files[@]}-1; i++)); do
    file1="${files[$i]}"
    file2="${files[$i+1]}"

    diff "$file1" "$file2" > /dev/null 2>&1
    status=$?

    if [ $status -eq 1 ]; then
        echo "Files differ: $file1 and $file2"
    fi
    # if status is 0 or >1, do nothing (continue silently)
done
