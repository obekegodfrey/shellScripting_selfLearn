#!/bin/bash

################################################################################################################
# Name: Obeke Godfrey Vicent
################################################################################################################

echo "Download the prometheus binaries"
if [ -e /home/ec2-user/prometheus-2.42.0.linux-amd64.tar.gz ];
then
    echo "file is already existing so no need to downloadd"
    tar -zxvf /home/ec2-user/prometheus-2.42.0.linux-amd64.tar.gz
else 
    echo "binary doesnot exists in system first we need to download it"
    wget https://github.com/prometheus/prometheus/releases/download/v2.42.0/prometheus-2.42.0.linux-amd64.tar.gz
    tar -zxvf /home/ec2-user/prometheus-2.42.0.linux-amd64.tar.gz
    echo "file has been extracated, you can start prometheus"    
fi    