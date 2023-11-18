#!/bin/bash
WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BWhite='\033[1;37m' 
NC='\033[0m'
if ! ls -l $HOME | grep "francinette-image" &> /dev/null; then
	git clone https://github.com/WaRtrO89/francinette-image.git $HOME/francinette-image
fi

chmod +x $HOME/francinette-image/run.sh

if ! ls -l $HOME/francinette-image | grep "francinette.tar" &> /dev/null; then
	if hostname | grep "42lyon.fr" &> /dev/null; then
 		if ls -l /sgoinfre/goinfre/Perso/mmorot/share | grep "francinette.tar" &> /dev/null; then
   			echo -e "${BLUE}[Francinette] ${WHITE}Copy of francinette.tar (${BWhite}/sgoinfre/goinfre/Perso/mmorot/share${WHITE})"
      			cp /sgoinfre/goinfre/Perso/mmorot/share/francinette.tar $HOME/francinette-image/
	 		echo -e "${BLUE}[Francinette] ${WHITE}Copy ${GREEN}OK"
   		fi
 	fi
fi

if ! ls -l $HOME/francinette-image | grep "francinette.tar" &> /dev/null; then
	docker build -t francinette-image $HOME/francinette-image
	docker image save francinette-image > $HOME/francinette-image/francinette.tar
fi
if ls -l $HOME/francinette-image | grep "francinette.tar" &> /dev/null; then
	docker load < $HOME/francinette-image/francinette.tar
fi

source $HOME/francinette-image/utils/install_zshrc.sh


echo -e "${BLUE}[Francinette] ${GREEN}Installation completed!\n${WHITE}Use the ${BWhite}paco${WHITE} or ${BWhite}francinette${WHITE} commands in your project folder."

exec "$SHELL"

