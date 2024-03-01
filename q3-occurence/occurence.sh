echo "File Path:"
read filepath

echo "Keyword:"
read keyword

# while read line;
# do echo $line | grep -win "luis" 
# done < $filepath

# The -w option ensures that only whole word matches are considered

# The -n option shows line numbers where the word is found

# The -i option performs case-insensitive matching

# echo "grep -wci"
# grep -wci "$keyword" "$filepath" 

cat ./luis.txt| grep -o -i Luis | wc -l



