#!/bin/bash
WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
if ls -l $HOME | grep "francinette-image" &> /dev/null; then
    mkdir -p $HOME/.tmp_francinette
    cd $HOME/.tmp_francinette
    git clone https://github.com/WaRtrO89/francinette-image.git

    source $HOME/.tmp_francinette/francinette-image/utils/move_tmp.sh
    source $HOME/.tmp_francinette/francinette-image/utils/remove_docker.sh
    source $HOME/.tmp_francinette/francinette-image/utils/remove_zshrc.sh

    rm -rf $HOME/francinette-image

    mv -r $HOME/.tmp_francinette/francinette-image $HOME/francinette-image
    if ls -l $HOME/.tmp_francinette | grep "francinette.tar" &> /dev/null; then
        mv $HOME/.tmp_francinette/francinette.tar $HOME/francinette-image/
    fi

    rm -rf $HOME/.tmp_francinette

    source $HOME/francinette-image/install.sh

    
    echo -e "${BLUE}[Francinette] ${WHITE}Updated ${GREEN}OK"
fi
if ! ls -l $HOME | grep "francinette-image" &> /dev/null; then
    echo -e "${BLUE}[Francinette] ${WHITE}Updated ${RED}ERROR (francinette not installed...)"
fi