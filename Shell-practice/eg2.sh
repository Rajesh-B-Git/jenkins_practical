#!/bin/bash

cat /etc/shadow

if [ "$?" -eq "0" ]
then
echo "Command executed successfully"
exit 0
else
echo " Command not executed successfully"
exit 1
fi

