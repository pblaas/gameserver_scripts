#!/bin/sh
hostname="K4F:CSGO::casual"
type=CSgo_casual
ip=0.0.0.0
port=27015
echo Running $type 
cd csgo-ds
screen -dmS $type ./srcds_run -game csgo -console -usercon +port $port +game_type 0 +game_mode 1 -ip $ip +mapgroup mg_bomb +map zm_playtime_v2 -tickrate 100 -maxplayers_override 32 +hostname $hostname 
