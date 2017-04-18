#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
read -p "Username:" -s USER 
echo
read -p "Password:" -s PASS
./steamcmd +login $USER $PASS +force_install_dir arma3 +app_update 233780 validate +quit
unset USERNAME 
unset PASS
