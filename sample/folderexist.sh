#!/bin/bash

echo Enter a folder name/ddirectory name:
read foldername

if test -f $foldername
then
    echo $foldername given is afile not a folder
else
if test -d $foldername
then
    echo $foldername given is a folder nor a file
else
    echo $foldername is neiter a file nor a folder
fi
fi