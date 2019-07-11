#!/bin/sh

./vast_show_connection_commands.py | while read -r line ; do  echo "$line \"tail bminer/mining.log\"" ; echo "$line \"tail bminer/mining.log\"" |  xargs -L1 command  ; done 
