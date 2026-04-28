#!/bin/bash

##########################################################################################
# =============================== Name: Obeke Godfrey Vicent =========================== #
##########################################################################################

echo "==========================Status check docker service=============================="
status="`sudo systemctl status docker|awk 'NR==3 {print}'|cut -d ':' -f 2|cut -d '(' -f 1`"
echo $status
if [ $status = 'active' ];
then
    echo "Service is running fine........."
else
    echo "Service is not running.........."
fi        