#!/bin/sh
hostname="k4f:deathmatch"
type=Deathmatch
ip=0.0.0.0
port=27028
echo Running $type 
cd /home/gamed/csgo-ds
sv_setsteamaccount=A2C54782BE6E9873B7FD7AD9D8A58317
screen -dmS $type ./srcds_run  -game csgo -console -usercon +port $port +game_type 1 +game_mode 2 -ip $ip -tickrate 120 +hostname $hostname -maxplayers_override 14 +map de_mirage +sv_setsteamaccount $sv_setsteamaccount 
#./srcds_run  -game csgo -console -usercon +port $port +game_type 1 +game_mode 2 -ip $ip -tickrate 120 +hostname $hostname -maxplayers_override 14 +mapgroup mg_allclassic +map de_dust +exec op08_stab_stab_zap.cfg
