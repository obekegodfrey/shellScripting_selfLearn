#!/bin/bash

##############################################
# Name: Obeke Godfrey Vicent
##############################################
echo "script to install git"
echo "Installation started"

if [ "$(uname)" == "Linux" ];
then
    echo "this is linux box, installing git"
    sudo apt install git -y
elif [ "$(uname)" == "Dorwin" ];
then
    echo "This is not linux box"
    echo "this is Macos"
    brew install git
else
    echo "not installing"
fi        

