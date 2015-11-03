#!/bin/bash

# Defaults according to server.cfg:

gameport=`expr $1 + 27960`
rconport=`expr $1 + 28960`
servernum=`expr $1 + 1`

docker run -d -p $gameport:$gameport -p $gameport:$gameport/udp -p $rconport:$rconport marconett/quakelive \
+set sv_hostname "Server No #$servernum" \
+set net_port "$gameport" \
+set zmq_rcon_port "$rconport"
