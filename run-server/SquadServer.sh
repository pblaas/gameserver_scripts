#!/bin/sh
cd squad
UE4_TRUE_SCRIPT_NAME=$(echo \"$0\" | xargs readlink -f --canonicalize-existing)
UE4_PROJECT_ROOT=$(dirname "$UE4_TRUE_SCRIPT_NAME")
chmod +x "$UE4_PROJECT_ROOT/Squad/Binaries/Linux/SquadServer"
LD_LIBRARY_PATH="$UE4_PROJECT_ROOT/linux64/:$LD_LIBRARY_PATH" "$UE4_PROJECT_ROOT/Squad/Binaries/Linux/SquadServer"  $@
cd -
