#!/bin/bash
echo "Starting Q3 server"
sleep 1
cd /home/gamed/quake3ds
screen -L -A -m -d -S q3-server ./q3ded +set dedicated  2 +set sv_pure 0 +set gametype 4 +exec ffa.cfg
