#!/bin/sh
cd UT2004/System
echo Starting Unreal 2004 dedicated server.
screen -dmS ut2k4 ./ucc-bin server DM-Morpheus3?game=XGame.xDeathMatch?AdminName=admin?AdminPassword=youradminpasshere ini=ut2004.ini -lanplay -nohomedir
