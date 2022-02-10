#!/bin/bash

#Author: Giuseppe Marcello Guarino
#Creation Date: 10.02.2020
#Licence: GPL-3

# Script to install the various icons and and themes

SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"

echo "#####################################################"
echo "Installing Nord Terminal Theme"
echo "#####################################################"

git clone https://github.com/Mayccoll/Gogh.git $SCRIPT_PATH/gogh

# necessary on ubuntu
# export TERMINAL=gnome-terminal

# install themes
$SCRIPT_PATH/gogh/nord.sh


