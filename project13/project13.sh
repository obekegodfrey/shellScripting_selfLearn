#!/bin/bash
# Author: Obeke Godfrey Vicent

clear 
echo "........................."
echo "Welcome to the project 13"
echo "........................."    

echo -e "[a]addition\n[b]subtraction\n[c]multiplication\n[d]division"
read -p "Enter your choice: " choice
case $choice in
    [aA])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 + num2))
        echo "Result: $result"
        ;;
    [bB])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 - num2))
        echo "Result: $result"
        ;;
    [cC])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        result=$((num1 * num2))
        echo "Result: $result"
        ;;
    [dD])
        read -p "Enter first number: " num1
        read -p "Enter second number: " num2
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
            echo "Result: $result"
        else
            echo "Error: Division by zero is not allowed."
        fi
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac