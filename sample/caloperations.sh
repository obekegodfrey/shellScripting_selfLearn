#!/bin/bash

echo Enter first and second number:
read num1 num2

echo choose an option
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
read option

case $option in
    1) result=`expr $num1 + $num2`
       echo Addition of $num1 and $num2 is $result
       ;;
    2) result=`expr $num1 - $num2`
       echo Subtraction of $num1 and $num2 is $result
       ;;
    3) result=`expr $num1 \* $num2`
       echo Multiplication of $num1 and $num2 is $result
       ;;
    4) if [ $num2 -eq 0 ];
       then
           echo Division by zero is not allowed
           exit 1
       fi
       result=`expr $num1 / $num2`
       echo Division of $num1 and $num2 is $result
       ;;
    *) echo Invalid option
       exit 1
       ;;
esac