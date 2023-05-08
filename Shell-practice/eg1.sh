#!/bin/bash
HOSTNAME=$(hostname)
echo "This Script is running on $HOSTNAME"
NAME="Shell Scripting is fun!!!"
LIST=$(ls -l)
echo "$LIST"
echo $NAME
