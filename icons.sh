#!/bin/bash

#Author: Giuseppe Marcello Guarino
#Creation Date: 10.02.2020
#Licence: GPL-3

SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

echo "#####################################################"
echo "Installing Icons Theme"
echo "#####################################################"


git clone https://github.com/vinceliuice/Tela-icon-theme.git $SCRIPT_PATH/Tela-icons
echo "Assigning permissions"
sudo chmod +x $SCRIPT_PATH/Tela-icons/install.sh
$SCRIPT_PATH/Tela-icons/install.sh

