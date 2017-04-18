#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
read -p "Username:" -s USER 
echo
read -p "Password:" -s PASS
./steamcmd +login $USER $PASS +force_install_dir squad +app_update 403240 validate +quit
unset USERNAME 
unset PASS
