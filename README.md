# QuakeLive docker container

## QL server in 2 minutes
* `git clone https://github.com/marconett/quakelive-docker`
* Put your SteamID into `access.txt` for admin access
* Put the Workshop ItemID of the addons you want into `workshop.txt`
* Define mappools (all `.txt` files will be copied to the container)
* Create a base config in `server.cfg`
* Put more variable in `start.sh`
* `docker build -t "quake:latest" .`
* `./start.sh <x>` create a docker container with quake on ports 2796x and 2896x (rcon)

## Notes
* `.txt` and `.cfg` files are just examples.
* IDs ZMQ Python scripts are included for easy access. I didn't write or change those.
* This should be extended to make different `server.cfg` files per container possible.
* The image on [Docker Hub](https://hub.docker.com/r/marconett/quakelive/) is useless. Please roll your own.
