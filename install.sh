#!/bin/bash
if ! ls -l $HOME | grep "francinette-image" &> /dev/null; then
	git clone https://github.com/WaRtrO89/francinette-image.git $HOME/francinette-image
fi

chmod +x $HOME/francinette-image/run.sh

if ! ls -l $HOME/francinette-image | grep "francinette.tar" &> /dev/null; then
	docker build -t francinette-image $HOME/francinette-image
	docker image save francinette-image > $HOME/francinette-image/francinette.tar
fi
if ls -l $HOME/francinette-image | grep "francinette.tar" &> /dev/null; then
	docker load < $HOME/francinette-image/francinette.tar
fi

source $HOME/francinette-image/utils/install_zshrc.sh

WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BWhite='\033[1;37m' 
NC='\033[0m'
echo -e "${BLUE}[Francinette] ${GREEN}Installation completed!\n${WHITE}Use the ${BWhite}paco${WHITE} or ${BWhite}francinette${WHITE} commands in your project folder."

exec "$SHELL"

