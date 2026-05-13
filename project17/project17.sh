#!/bin/bash
# Author: Obeke Godfrey Vicent

echo "CPU Load average value check"
load='top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}'|cut -d '%' -f1'
echo "Current CPU Load: $load"
if [[ ${load%.*} -gt 1 ]]; 
then
    echo "CPU load is very high: $load"
else
    echo "CPU Load is normal."
fi 