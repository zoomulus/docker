#!/bin/bash

java=/usr/bin/java
oak_jar=/opt/jackrabbit-oak/oak-run.jar
repo_path=/var/lib/jackrabbit-oak/data

if [ $# -eq 0 ]; then
	echo "Usage: $0 <run mode> [args]"
	$java -jar $oak_jar help | tail -1
	echo
	echo "Default repo location is $repo_path"
	echo
	exit 1
fi

if [ "$1" == "help" ]; then
	$java -jar $oak_jar $@
	echo
	echo "Default repo location is $repo_path"
	echo
	exit 0
fi

$java -jar $oak_jar $@

