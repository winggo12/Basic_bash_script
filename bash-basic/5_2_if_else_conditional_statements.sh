echo 'Input number'
read num

if [ $num -lt 0 ]; then
    echo 'Negative number'
elif [ $num == 0 ]; then
    echo 'Zero'
elif [ $num -gt 0 ]; then
    echo 'Positive number'
fi