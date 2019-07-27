#!/bin/bash
read -p "Username:" -s USER 
#echo
read -p "Password:" -s PASS
export LD_LIBRARY_PATH=`pwd` 
./steamcmd +login $USER $PASS  +force_install_dir mordhau +app_update 629800 validate +quit
