#!/bin/bash

#Author: Giuseppe Marcello Guarino
#Creation Date: 10.02.2020
#Licence: GPL-3

# Script to install the various icons and and themes

SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"

# Install icons
$SCRIPT_PATH/icons.sh

# Install terminal theme
$SCRIPT_PATH/terminal_theme.sh

# Install zsh
$SCRIPT_PATH/install_zsh.sh

# Install desktop theme
$SCRIPT_PATH/theme.sh

echo "#####################################################"
echo "SETUP COMPLETED"
