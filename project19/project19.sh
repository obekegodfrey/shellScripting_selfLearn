#!/bin/bash

# Author: Obeke Godfrey Vicent

#script check filesystem utilization every 120 seconds store in a file 
while true;
do
date >> /home/obekegodfreyvicent/Desktop/DevOps_Practice/Practice/ShellScripting/DevOps-techStack/project19/fs-monitor.txt
sudo df -h >> /home/obekegodfreyvicent/Desktop/DevOps_Practice/Practice/ShellScripting/DevOps-techStack/project19/fs-monitor.txt
echo " " >> /home/obekegodfreyvicent/Desktop/DevOps_Practice/Practice/ShellScripting/DevOps-techStack/project19/fs-monitor.txt
sleep 120
done