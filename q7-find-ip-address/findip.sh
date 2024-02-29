#!/bin/bash

# Prompt the user for the log file path

read -p “Enter the path to the log file: “ log_file

# Prompt the user for the output file path

read -p “Enter the path to the output file: “ output_file

# Use grep with a regular expression to find all IP addresses in the log file

# The -E option enables extended regular expressions

# The -o option shows only the matched part (IP address) instead of the whole line

ip_addresses=$(grep -Eo “([0–9]{1,3}\.){3}[0–9]{1,3}” “$log_file”)

# Write the IP addresses to the output file

echo “$ip_addresses” > “$output_file”

echo “IP addresses extracted from ‘$log_file’ and written to ‘$output_file’.”