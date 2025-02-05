#!/bin/bash

if [ -z "${INSTALL_DIR}" ]; then
    if ls -l "$HOME" | grep -q "francinette"; then
        INSTALL_DIR=$HOME
    else
        read -p "Enter the Directory of francinette: " INSTALL_DIR
    fi
fi

export INSTALL_DIR
mkdir -p "$INSTALL_DIR/.tmp_francinette"

git clone https://github.com/WaRtr0/francinette-image.git "$INSTALL_DIR/.tmp_francinette/francinette-image"

if [ -f "$INSTALL_DIR/.tmp_francinette/francinette-image/utils/remove_docker.sh" ]; then
    source "$INSTALL_DIR/.tmp_francinette/francinette-image/utils/remove_docker.sh"
fi

if [ -f "$INSTALL_DIR/.tmp_francinette/francinette-image/utils/remove_zshrc.sh" ]; then
    source "$INSTALL_DIR/.tmp_francinette/francinette-image/utils/remove_zshrc.sh"
fi

if [ -d "$INSTALL_DIR/francinette-image" ]; then
    rm -rf "$INSTALL_DIR/francinette-image"
fi

if [ -d "$INSTALL_DIR/francinette" ]; then
    rm -rf "$INSTALL_DIR/francinette"
fi

if [ -d "$INSTALL_DIR/.tmp_francinette" ]; then
    rm -rf "$INSTALL_DIR/.tmp_francinette"
fi

sed -i '/^alias francinette=/d' $HOME/.bashrc
sed -i '/^alias paco=/d' $HOME/.bashrc
sed -i '/^alias francinette=/d' $HOME/.zshrc
sed -i '/^alias paco=/d' $HOME/.zshrc

WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}[Francinette] ${WHITE}Uninstalled ${GREEN}OK"

exec "$SHELL"
