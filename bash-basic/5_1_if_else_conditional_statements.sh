## Syntax
# if [[ condition ]];
# then
# 	statement
# elif [[ condition ]]; then
# 	statement 
# else
# 	do this by default
# fi

echo "\nInput a:"
read a

echo "\nInput b:"
read b

c=70

if [ $a -gt 60 -a $b -lt 20 ]; then
    echo 'a is greater than 60 while b is lower than 20'
elif [ $a -gt 60 ]; then
    echo 'Only a is greater than 60'
elif [ $b -lt 20 ]; then
    echo 'Only b is lower than 20'
else
    echo 'condition "a is greater than 60 while b is lower than 20" is not achieved!'
fi

echo "c is $c"

echo "\nInput c:"
read c

if [ $c != 70 ];then
    echo 'c is not equal to 70'
else
    echo 'c is equal to 70'
fi
    

