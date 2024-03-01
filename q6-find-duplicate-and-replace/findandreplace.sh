# sorted_file=$(sort "$file_path" | uniq -d)
# echo "$sorted_file"
# sed -i "s/$duplicate_string/$replacement_string/g" "$file_path"

#!/bin/bash

file="names.txt"
new_file=""

# Read the file line by line
while IFS= read -r line
do
    # Check if the current name is already present in the file
    count=$(grep -c -w "$line" "$file")
    # echo "$line - $count"
    # If the count is greater than 1, it means the name is duplicated
    if [ "$count" -gt 1 ]; then
        # Replace all occurrences of the name with "DUPLICATED"
        # tmp=$(sed "s/$line/DUPLICATED/g" "$file")
        # new_file="$tmp"

        tmp=$(echo "$line" | sed "s/$line/DUPLICATED/g")
        echo "$tmp"
    else
        echo "$line"
    fi
done < "$file"

echo "$new_file" > new_luis.txt
