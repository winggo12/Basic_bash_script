#!/bin/bash
echo "Please enter an alphabet:"
read alphabet

case $alphabet in
    "a")
        echo 'a for apple'
        ;;
    "b") 
        echo 'b for boy'
        ;;
    "c")    
        echo 'c for cat'
        ;;
    *)
        echo 'Other alphabets are entered other than abc'
esac
    