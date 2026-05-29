#!/bin/bash

echo Enter a file name to check:
read filename

if test -s $filename
then
    echo $filename is not empty
else
    echo $filename is empty
fi