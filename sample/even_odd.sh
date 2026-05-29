#!/bin/bash

echo Enter a number:
read num

if [ $num -lt 0 ];
then
    echo $num is negative
    exit 1
fi
r = `expr $num % 2`
if [ $r -eq 0 ];
then
    echo $num is even
else
    echo $num is odd
fi