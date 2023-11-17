#!/bin/bash

RC_FILE="$HOME/.zshrc"

if ! grep "francinette-image" "$RC_FILE" &> /dev/null; then
printf "\nif ! systemctl status docker | grep "running" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\t\techo \"[Francinette] Starting Docker...\"" "$HOME" >> "$RC_FILE"
printf "\n\t\tsleep 1" "$HOME" >> "$RC_FILE"
printf "\n\t\texec \"$SHELL\"" "$HOME" >> "$RC_FILE"
printf "\nfi" "$HOME" >> "$RC_FILE"

printf "\nif ! docker image ls | grep "francinette-image" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\t\techo \"[Francinette] Loading the docker container\"" "$HOME" >> "$RC_FILE"
printf "\n\t\tdocker load < %s/francinette-image/francinette.tar" "$HOME" >> "$RC_FILE"
printf "\n\t\texec \"$SHELL\"" "$HOME" >> "$RC_FILE"
printf "\nfi" "$HOME" >> "$RC_FILE"

printf "\nif ! docker ps | grep \"francinette-image\" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\tif docker run -d -i -v /home:/home -v /goinfre:/goinfre -v /sgoinfre:/sgoinfre -t --name run-paco francinette-image /bin/bash 2>&1 | grep \"already\" &> /dev/null; then" "$HOME" >> "$RC_FILE"
printf "\n\t\tdocker start run-paco" "$HOME" >> "$RC_FILE"
printf "\n\tfi" "$HOME" >> "$RC_FILE"
printf "\nfi" "$HOME" >> "$RC_FILE"
fi

if ! grep "francinette=" "$RC_FILE" &> /dev/null; then
	printf "\nalias francinette=%s/francinette-image/run.sh\n" "$HOME" >> "$RC_FILE"
fi

if ! grep "paco=" "$RC_FILE" &> /dev/null; then
	printf "\nalias paco=%s/francinette-image/run.sh\n" "$HOME" >> "$RC_FILE"
fi

WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BWhite='\033[1;37m' 
NC='\033[0m'
echo -e "${BLUE}[Francinette] ${WHITE}zshrc params installed"
