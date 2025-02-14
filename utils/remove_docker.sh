#!/bin/bash

if docker container ls -la | grep "run-paco" &> /dev/null; then
    docker exec -t run-paco chmod -R 777 /francinette/logs
    docker exec -t run-paco chmod -R 777 /francinette/temp
fi

if docker ps | grep "francinette-image" &> /dev/null; then
    docker stop run-paco
    docker remove run-paco
fi

if docker image ls | grep "francinette-image" &> /dev/null; then
    docker rmi -f francinette-image
fi

WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BWhite='\033[1;37m' 
NC='\033[0m'
echo -e "${BLUE}[Francinette] ${WHITE} docker image removed"
