#!/bin/bash

# Author: Obeke Godfrey Vicent
clear
echo "...................................."
echo " Welcome to calculator function test"
echo "...................................."

read_input(){
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
}

echo -e "[a]addition\n[b]subtraction\n[c]multiplication\n[d]division\n[e]modulus"
read -p "Enter your choice: " choice
case $choice in
    [aA])
        read_input
        result=$((num1 + num2))
        echo "The sum of $num1 and $num2 is: $result"
        ;;
    [bB])
        read_input
        result=$((num1 - num2))
        echo "The difference between $num1 and $num2 is: $result"
        ;;
    [cC])
        read_input
        result=$((num1 * num2))
        echo "The product of $num1 and $num2 is: $result"
        ;;
    [dD])
        read_input
        if [[ $num2 -ne 0 ]]; then
            result=$((num1 / num2))
            echo "The quotient of $num1 and $num2 is: $result"
        else
            echo "Error: Division by zero is not allowed."
        fi
        ;;
    [eE])
        read_input
        if [[ $num2 -ne 0 ]]; then
            result=$((num1 % num2))
            echo "The modulus of $num1 and $num2 is: $result"
        else
            echo "Error: Modulus by zero is not allowed."
        fi
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac