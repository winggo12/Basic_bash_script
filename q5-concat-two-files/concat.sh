#!/bin/bash

# Prompt the user for the first input file

read -p “Enter the path to the first input file: “ input_file1

# Prompt the user for the second input file

read -p “Enter the path to the second input file: “ input_file2

# Prompt the user for the output file

read -p “Enter the path to the output file: “ output_file

# Use the ‘cat’ command to concatenate the contents of the two input files

# and redirect the output to the output file

cat “$input_file1” “$input_file2” > “$output_file”

echo “Merged contents of ‘$input_file1’ and ‘$input_file2’ written to ‘$output_file’.”