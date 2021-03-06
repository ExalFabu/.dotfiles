#!/bin/bash

if ! command -v stow &> /dev/null
then
    echo "stow could not be found, please install it with \"sudo apt install stow\""
    exit
fi

stow -nvt ~ configs
echo "---"
echo -n "Do you wish to proceed? [y/N] "
# Bunch of code just to ask a single character to confirm the operation. Thx to https://stackoverflow.com/a/27875395/15438584
old_stty_cfg=$(stty -g)
stty raw -echo ; answer=$(head -c 1) ; stty $old_stty_cfg # Careful playing with stty
if echo "$answer" | grep -iq "^y" ;then
    echo ""
    stow -t ~ configs
else
    echo "\nAborted"
fi