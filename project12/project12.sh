#!/bin/bash
# Author: Obeke Godfrey Vicent

error_file=`cat /var/log/messages`
matched_error=`grep -i error /var/log/messages`
echo $matched_error
if [[ $? -eq 0 ]]; 
then
    echo "Errors found in the log file: $matched_error"
else
    echo "No errors found in the log file."
fi