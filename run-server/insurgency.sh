#!/bin/sh
UE4_TRUE_SCRIPT_NAME=$(echo \"$0\" | xargs readlink -f)
UE4_PROJECT_ROOT=$(dirname "$UE4_TRUE_SCRIPT_NAME")
chmod +x "$UE4_PROJECT_ROOT/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping"
#"$UE4_PROJECT_ROOT/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping" Compound?Scenario=Scenario_Outskirts_Checkpoint_Security?port=27102?queryport=27131?beaconport=27161?MaxPlayers=8?password="testing" -log -hostname="Dutch Recon - Netherlands [testing]"
#"$UE4_PROJECT_ROOT/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping" Oilfield?Scenario=Scenario_Oilfield_Checkpoint_Security?port=27102?queryport=27131?beaconport=27161?MaxPlayers=8 -hostname="Dutch Recon - Netherlands"
#"$UE4_PROJECT_ROOT/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping" Town?Scenario=Scenario_Hideout_Checkpoint_Security?port=27102?queryport=27131?beaconport=27161?MaxPlayers=8 -hostname="Dutch Recon - Netherlands" -virtmemkb=6291456
#"$UE4_PROJECT_ROOT/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping" Compound?Scenario=Scenario_Outskirts_Checkpoint_Security?port=27102?queryport=27131?beaconport=27161?MaxPlayers=8 -GSLTTOKEN=53CD1290F7A176DF8670D3817A1A91AC -GameStats -hostname="Dutch Recon - Netherlands" -virtmemkb=6291456 
"$UE4_PROJECT_ROOT/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping" Ministry?Scenario=Scenario_Ministry_Checkpoint_Security?port=27102?queryport=27131?beaconport=27161?MaxPlayers=8 -GSLTTOKEN=53CD1290F7A176DF8670D3817A1A91AC -GameStats -hostname="Dutch Recon - Netherlands" -virtmemkb=6291456 
