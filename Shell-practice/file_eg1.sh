#!/bin/bash

FILES=$@
for FILE in $FILES
do
	if [ -f "$FILE" ]
	then
		echo "$FILE is regalur file"
		exit 0
	elif [ -d "$FILE" ]
	then
		echo "$FILE is directory"
		exit 1
	else
		echo "$FILE is another type of file"
		exit 2
	fi

ls -l $FILE
done
