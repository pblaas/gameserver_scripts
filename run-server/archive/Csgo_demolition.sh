#!/bin/sh
hostname="Counter-Strike:GO:Dedicated-server:DEMOLITION"
type=CSgo_casual
ip=0.0.0.0
port=27015
echo Running $type 
cd csgo-ds
screen -dmS $type ./srcds_run -game csgo -console -usercon +port $port +game_type 1 +game_mode 1 -ip $ip -tickrate 100 +hostname $hostname -authkey 1E0568132487CEA3975B3F95A9421CF7 -maxplayers_override 20
