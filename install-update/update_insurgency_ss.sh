#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
./steamcmd.sh +force_install_dir inssa  +login anonymous +app_update 581330 validate +quit
