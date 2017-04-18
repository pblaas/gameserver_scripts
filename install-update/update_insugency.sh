#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
./steamcmd +login anonymous +force_install_dir insurgency +app_update 237410 validate +quit
