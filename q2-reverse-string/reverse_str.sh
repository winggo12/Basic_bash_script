
reverse_string(){
    input_string=$1
    reversed_string=""
    length=${#input_string}
    echo "$length"
    for (( i=length-1; i>=0; i-- )); do
        reversed_string="$reversed_string${input_string:i:1}"
    done

    echo "${reversed_string}"
}

echo "Input string"
read input

reverse=$(reverse_string "$input")
echo "$reverse"