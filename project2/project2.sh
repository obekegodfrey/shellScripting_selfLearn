#!/bin/bash

###################################
## Author: Obeke Godfrey Vicent
###################################

echo "Script to install git "
echo "Installation started "
if [ "$(uname)" == "linux" ];
then
    echo "this is linux box, installing git"
elif [ "$(uname)" == "Darwin"];
then
    echo "this is not linux box"
    echo "this is Macos"
    brew install git
else
    echo "not installing"
fi    


