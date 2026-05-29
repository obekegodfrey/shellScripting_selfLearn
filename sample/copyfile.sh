#!/bin/bash

echo provide your file name:
read file

if test -f $file
then
    echo $file exists
    echo provide name of the new file
    read newfile
    mv $file $newfile
    echo $file is renamed to $newfile
    echo content in the new file is ....
    cat $newfile
else
    echo $file does not exist
fi  