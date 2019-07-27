#!/bin/sh
hostname="k4f:Armsrace"
type=Armsrace
ip=0.0.0.0
port=27018
echo Running $type 
cd /home/gamed/csgo-ds
#./srcds_run  -game csgo -console -usercon +port $port +game_type 1 +game_mode 0 -ip $ip -tickrate 120 +hostname $hostname -maxplayers_override 14 +mapgroup mg_armsrace +map ar_shoots
screen -dmS $type ./srcds_run  -game csgo -console -usercon +port $port +game_type 1 +game_mode 0 -ip $ip -tickrate 120 +hostname $hostname -maxplayers_override 14 +mapgroup mg_armsrace +map ar_shoots
