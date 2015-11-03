#!/bin/bash
while read p; do
        /home/quake/steamcmd.sh +login anonymous +workshop_download_item 282440 $p +quit
  done < /home/quake/steamapps/common/qlds/baseq3/workshop.txt
mv /home/quake/steamapps/workshop /home/quake/steamapps/common/qlds/steamapps/workshop
