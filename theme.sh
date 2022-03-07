#!/bin/bash

#Author: Giuseppe Marcello Guarino
#Creation Date: 10.02.2020
#Licence: GPL-3

# Script to install the various icons and and themes

SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"

echo "#####################################################"
echo "Installing Nord Theme for Cinnamon"
echo "#####################################################"

git clone https://github.com/EliverLara/Nordic.git nordic
sudo cp nordic /usr/share/themes/nordic

mkdir ~/.wallpapers
cp $SCRIPT_PATH/nordic_wallpapers ~/.wallpapers/nordic_wallpapers
