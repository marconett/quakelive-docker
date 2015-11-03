# QuakeLive docker container

## QL server in 2 minutes
* Put your SteamID into `access.txt` for admin access
* Put the Workshop ItemID of the addons you want into `workshop.txt`
* Define mappools (all `.txt` files will be copied to the container)
* Alter `server.cfg` to your liking (all `.cfg` files will be copied to the container)
* Alter the cvars in `start.sh`
* `./start.sh <x>` created a docker container with quake on ports 2796x and 2896x (rcon)

## Notes
* `start.sh` is pretty much the one from the ID tutorial.
* `.txt` and `.cfg` files are just examples.
* IDs ZMQ Python scripts are included for easy access. I didn't write or change those.
* The whole thing should probably be extended to make different `server.cfg` files per container possible.
* Image on [Docker Hub](https://hub.docker.com/r/marconett/quakelive/)
