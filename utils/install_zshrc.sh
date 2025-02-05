#!/bin/bash

RC_FILE="$HOME/.zshrc"
if [ -z "${INSTALL_DIR}" ]; then
    INSTALL_DIR=$HOME
fi

if ! grep "francinette-image" "$RC_FILE" &> /dev/null; then
printf "\nif ! systemctl status docker | grep \"running\" &> /dev/null; then"  >> "$RC_FILE"
printf "\n\t\techo \"[Francinette] Starting Docker...\"" >> "$RC_FILE"
printf "\n\t\tsleep 1" >> "$RC_FILE"
printf "\n\t\texec \"$SHELL\"" >> "$RC_FILE"
printf "\nfi" >> "$RC_FILE"

printf "\nif ! docker image ls | grep \"francinette-image\" &> /dev/null; then"  >> "$RC_FILE"
printf "\n\tif docker image ls 2>&1 | grep permission &> /dev/null; then" >> "$RC_FILE"
printf "\n\t\techo \"[Francinette] Permission Error\"" >> "$RC_FILE"
printf "\n\telse" >> "$RC_FILE"
printf "\n\t\tif ! [ -f %s/francinette-image/francinette.tar ] || docker load < %s/francinette-image/francinette.tar 2>&1 | grep \"no such file\"  &> /dev/null; then" "$INSTALL_DIR" "$INSTALL_DIR" >> "$RC_FILE"
printf "\n\t\t\techo \"[Francinette] Error width file \"francinette.tar\"\"" >> "$RC_FILE"
printf "\n\t\t\tdocker build -t francinette-image %s/francinette-image" "$INSTALL_DIR" >> "$RC_FILE"
printf "\n\t\t\tdocker image save francinette-image > %s/francinette-image/francinette.tar" "$INSTALL_DIR" >> "$RC_FILE"
printf "\n\t\telse" >> "$RC_FILE"
printf "\n\t\t\techo \"[Francinette] Loading the docker container\"" >> "$RC_FILE"
printf "\n\t\t\tdocker load < %s/francinette-image/francinette.tar" "$INSTALL_DIR" >> "$RC_FILE"
printf "\n\t\tfi" >> "$RC_FILE"
printf "\n\t\texec \"$SHELL\"" >> "$RC_FILE"
printf "\n\tfi" >> "$RC_FILE"
printf "\nfi" >> "$RC_FILE"

printf "\nif ! docker ps | grep \"francinette-image\" &> /dev/null; then" >> "$RC_FILE"
printf "\n\tif docker run -d -i -v /home:/home -v /goinfre:/goinfre -v /sgoinfre:/sgoinfre -v %s/francinette-image/logs:/francinette/logs -v %s/francinette-image/temp:/francinette/temp --name run-paco francinette-image /bin/bash 2>&1 | grep \"already\" &> /dev/null; then" "$INSTALL_DIR" "$INSTALL_DIR" >> "$RC_FILE"
printf "\n\t\tdocker start run-paco" >> "$RC_FILE"
printf "\n\tfi" >> "$RC_FILE"
printf "\nfi" >> "$RC_FILE"
fi


if ! grep "francinette=" "$RC_FILE" &> /dev/null; then
	printf "\nalias francinette=%s/francinette-image/run.sh\n" "$INSTALL_DIR" >> "$RC_FILE"
fi

if ! grep "paco=" "$RC_FILE" &> /dev/null; then
	printf "\nalias paco=%s/francinette-image/run.sh\n" "$INSTALL_DIR" >> "$RC_FILE"
fi

WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BWhite='\033[1;37m' 
NC='\033[0m'
echo -e "${BLUE}[Francinette] ${WHITE}zshrc params installed"
