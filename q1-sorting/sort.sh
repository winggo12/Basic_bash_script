sort services.txt > sorted_services.txt;
while read line
do echo $line | grep -i '.bar' | grep -v 'v3'
done < sorted_services.txt

#sort services.txt > sorted_services.txt && while read -r line; do echo "$line" | grep -i '.bar' | grep -v 'v3'; done < sorted_services.txt