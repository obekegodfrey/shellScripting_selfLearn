#!/bin/bash

echo Enter a file name:
read filename

if test -f $filename
then
    echo $filename exists
else
    echo $filename does not exist
fi