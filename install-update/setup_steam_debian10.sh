#!/bin/bash

# install steam binary
# install 32bit dependenies
# install wine 
# install accserver
# write acc configuration files
# open and forward firewall ports
# enable upnp
# run wine accserver

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc1 tmux unzip -y
sudo apt-get install wine-development wine32-development -y
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
curl -OL "https://github.com/assetto-corsa-web/accweb/releases/download/v1.14.1/accweb_1.14.1.zip" && unzip accweb_1.14.1.zip
./steamcmd.sh +exit

echo Writing update_accserver file
cat <<EOF | tee update_accserver.sh 
#!/bin/bash
export LD_LIBRARY_PATH=`pwd` 
read -p "Username:" -s USER 
echo
read -p "Password:" -s PASS
./steamcmd.sh +@sSteamCmdForcePlatformType windows +force_install_dir accserver +login $USER $PASS +app_update 1430110 +exit
unset USERNAME 
unset PASS
EOF

echo Writing acc server default in cfg dir
mkdir -p cfg
cat <<EOF | tee cfg/configuration.json
{
    "udpPort": 9600,
    "tcpPort": 9601,
    "maxConnections": 24,
    "lanDiscovery": 1,
    "registerToLobby: 1,
    "configVersion": 1
}
EOF

cat <<EOF | tee cfg/settings.json
{
    "serverName": "ACC Test Server Patrick",
    "adminPassword": "",
    "carGroup": "FreeForAll",
    "trackMedalsRequirement": 0,
    "safetyRatingRequirement": 0,
    "racecraftRatingRequirement": 0,
    "password": "gomax",
    "maxCarSlots": 4,
    "spectatorPassword": "",
    "ignorePrematureDisconnects": 0,
    "configVersion": 1
}
EOF

cat <<EOF | tee cfg/event.json
{
    "track": "zandvoort",
    "preRaceWaitingTimeSeconds": 80,
    "sessionOverTimeSeconds": 120,
    "ambientTemp": 22,
    "cloudLevel": 0.1,
    "rain": 0.0,
    "weatherRandomness": 1,
    "sessions": [
        {
            "hourOfDay": 6,
            "dayOfWeekend": 2,
            "timeMultiplier": 1,
            "sessionType": "P",
            "sessionDurationMinutes": 10
        },
                {
            "hourOfDay": 12,
            "dayOfWeekend": 2,
            "timeMultiplier": 1,
            "sessionType": "Q",
            "sessionDurationMinutes": 10
        },
        {
            "hourOfDay": 18,
            "dayOfWeekend": 3,
            "timeMultiplier": 2,
            "sessionType": "R",
            "sessionDurationMinutes": 20
        }
    ], 
    "configVersion": 1
}
EOF

cat <<EOF | tee cfg/assistRules.json
{
   "disableIdealLine": 0,
   "disableAutosteer": 1,
   "stabilityControlLevelMax": 100,
   "disableAutoPitLimiter": 0,
   "disableAutoGear": 1,
   "disableAutoClutch": 0,
   "disableAutoEngineStart": 0,
   "disableAutoWiper": 0,
   "disableAutoLights": 0
}
EOF
