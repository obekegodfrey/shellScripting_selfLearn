#!/bin/bash

echo "System health check ...."

echo "Disk Usage:"
df -h | grep /dev

echo "Memory Usage:"
free -m

echo "Uptime:"
uptime