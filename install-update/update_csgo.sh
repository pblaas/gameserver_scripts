#!/bin/bash
export LD_LIBRARY_PATH=`pwd`
read -p "Username:" -s USER
echo
read -p "Password:" -s PASS

./steamcmd +login $USER $PASS +force_install_dir csgo-ds +app_update 740 validate +quit
unset USER
unset PASS
