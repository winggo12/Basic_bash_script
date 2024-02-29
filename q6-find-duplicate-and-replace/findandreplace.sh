#!/bin/bash

# Prompt the user for the file path

read -p “Enter the path to the file: “ file_path

# Prompt the user for the duplicate string to search for

read -p “Enter the duplicate string to search for: “ duplicate_string

# Prompt the user for the replacement string

read -p “Enter the replacement string: “ replacement_string

# Find all occurrences of the duplicate string in the file and replace them with the replacement string

sorted_file=$(sort “$file_path” | uniq -d)

sed -i “s/$duplicate_string/$replacement_string/g” “$file_path”

echo “All occurrences of ‘$duplicate_string’ replaced with ‘$replacement_string’ in ‘$file_path’.”

