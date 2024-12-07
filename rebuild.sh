#!/bin/bash
WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
if ls -l $HOME | grep "francinette-image" &> /dev/null; then
    source $HOME/francinette-image/utils/remove_docker.sh
	rm -f $HOME/francinette-image/francinette.tar
    source $HOME/francinette-image/install.sh
    echo -e "${BLUE}[Francinette] ${WHITE}Rebuilded ${GREEN}OK"
fi
