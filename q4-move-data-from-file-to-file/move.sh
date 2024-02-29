#### Shell script to send the first ten lines of a file to another file.

# Prompt the user for the source file

read -p “Enter the path to the source file: “ source_file

# Prompt the user for the destination file

read -p “Enter the path to the destination file: “ destination_file

# Use the ‘head’ command to extract the first ten lines from the source file

# and redirect the output to the destination file

head -n 10 “$source_file” > “$destination_file”

echo “First ten lines of ‘$source_file’ copied to ‘$destination_file’.”