#!/bin/bash
echo "Enter a number:"
read a
if [ $a -gt 0 ];
then
    echo "Positive"
elif [ $a -lt 0 ];
then
    echo "Negative"
else
    echo "Zero"
fi