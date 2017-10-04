#!/bin/bash

SERVERS_DIR="servers"

if [ $# -eq 0 ]; then
	echo "No arguments provided. Use: './create.sh <name> [jar]'"
	exit 1
else
	if [ -z "$1" ]; then 
		echo "The argument 'name' is required."
		exit 1
	else
		name="$1"
	fi
	
	if [ ! -d "$SERVERS_DIR" ]; then
		mkdir "$SERVERS_DIR"
	fi
	
	mkdir "$SERVERS_DIR/$name" && cd "$SERVERS_DIR/$name"
	
	if [ -n "$2" ]; then
		wget "$2" -q -O server.jar
	fi
fi

