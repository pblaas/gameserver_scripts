#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
./steamcmd +login anonymous  +force_install_dir inssa_waves +app_update 581330 validate +quit
