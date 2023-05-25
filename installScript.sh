#!/bin/bash
# steamcmd Base Installation Script
#
# Server Files: /mnt/server

SRCDS_APPID=232130

if [ "${STEAM_USER}" == "" ]; then
    echo -e "steam user is not set.\n"
    exit 1
else
    echo -e "user set to ${STEAM_USER}"
fi

cd /tmp
mkdir -p /mnt/server/steamcmd
curl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd
cd /mnt/server/steamcmd

chown -R root:root /mnt
export HOME=/mnt/server

./steamcmd.sh +login anonymous +app_update ${SRCDS_APPID} validate +quit

cd ~/

export STEAMAPPDIR=Steam/steamapps/common/kf2server

echo "done"
