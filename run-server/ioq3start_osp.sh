#!/bin/bash
echo "Starting Q3 instagib server"
sleep 1
cd /home/gamed/ioquake3
screen -L -A -m -d -S io-q3server ./ioq3ded.x86_64 +set fs_game osp +set vm_game 2 +set dedicated  2 +set sv_pure 0 +set gametype 0 +exec instagib.cfg 
