#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
read -p "Username:" -s USER 
echo
read -p "Password:" -s PASS
../steamcmd.sh +@sSteamCmdForcePlatformType windows +login $USER $PASS +force_install_dir assetto +app_update 302550 +exit
unset USERNAME 
unset PASS
