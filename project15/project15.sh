#!/bin/bash

# Author: Obeke Godfrey Vicent

echo "This is function test"
disk_usage() 
{
    disk= df -h
    echo "Disk usage is: $disk"
}
if [[ $? -eq 0 ]];
then
    echo "this is the disk usage report"
    disk_usage
else
    echo "disk has some issues"
fi