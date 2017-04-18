#!/bin/bash
echo "Starting Q3 instagib server"
sleep 1
cd /home/gamed/quake3ds
#screen -L -A -m -d -S q3-server ./q3ded +set fs_game iinstagib +set dedicated  2 +set sv_pure 0 +set gametype 4 +exec ffa.cfg
screen -L -A -m -d -S q3-server ./q3ded +set fs_game instagib +set dedicated  2 +set sv_pure 0 +set gametype 4 +exec ffa.cfg
