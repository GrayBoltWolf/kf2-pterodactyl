# kf2-pterodactyl
Docker image for Pterodactyl Killing Floor 2 server.

### Simple setup

Import egg-single-session-template.json for a starting point with a single session setup. 

### Or if you prefer to build the egg yourself:

Docker image: `ghcr.io/grayboltwolf/kf2-pterodactyl:master`

Install script can be found in: `installScript.sh`, use `ghcr.io/pterodactyl/installers:debian` as the script container, and `bash` as the entrypoint command.

Configuration variables: `configurationVariables.json`

Start command is: `Steam/steamapps/common/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64`

Start configuration is: 
```
{
    "done": "Playfab server registered with lobby ID"
}
```

Stop command is ctrl-C
