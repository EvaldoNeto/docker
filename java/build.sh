#!/bin/bash

java_ubuntu="java-ubuntu"
java_phusion="java-phusion"

declare -A args
args=(
    [java_ubuntu]="ubuntu"
    [java_phusion]="phusion"
)

if [ "$#" -ne "1" ]; then
    echo Wrong number of arguments, expected 1 argument
    exit 1
fi

for key in "${!args[@]}"; do
    if [ "$key" = "$1" ]; then
    	echo building container ${args[${key}]}
        docker build -f ./${args[${key}]}/Dockerfile -t biga8/${args[${key}]}-java-8:latest ./${args[${key}]}
	    exit 1
    fi
done

echo $1 dont exist, use one of the following

for key in "${!args[@]}"; do
    echo -$key
done

exit 0
