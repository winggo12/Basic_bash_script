# Use grep with a regular expression to find all IP addresses in the log file

# The -E option enables extended regular expressions

# The -o option shows only the matched part (IP address) instead of the whole line

ip_addresses=$(cat "ips.txt" | grep -E -o "([0-9]{1,3}\.){3}[0-9]{1,3}")

# Write the IP addresses to the output file

echo "$ip_addresses" > "new_ips.txt"

echo "IP addresses extracted from ‘$log_file’ and written to ‘$output_file’."