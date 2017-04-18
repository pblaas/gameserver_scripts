#!/bin/sh
hostname="Counter-Strike:GO:Dedicated-server:CUSTOM"
type=CSgo_casual
ip=0.0.0.0
port=27015
echo Running $type 
cd csgo-ds
screen -dmS $type ./srcds_run -game csgo -console -usercon +port $port +game_type 0 +game_mode 1 -ip $ip +host_workshop_collection 126598973 +workshop_start_map 127012360 -tickrate 100 +hostname $hostname -authkey 1E0568132487CEA3975B3F95A9421CF7 
