#!/bin/bash
sed -i '/^if ! docker image ls | grep francinette-image &> \/dev\/null; then/,/^fi/ d' $HOME/.zshrc
sed -i '/\b\(systemctl status docker\|grep francinette-image\|grep \"francinette-image\"\)\b/{N;N;N;N;d;}' $HOME/.zshrc
sed -i '/\b\("francinette-image"\)\b/{N;N;N;N;d;}' $HOME/.zshrc
sed -i '/\b\("francinette-image"\|docker ps\)\b/{N;N;N;N;d;}' $HOME/.zshrc
sed -i "/\b\(alias paco\|alias francinette\)\b/d" $HOME/.zshrc

WHITE='\033[0;37m' 
BLUE='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
BWhite='\033[1;37m' 
NC='\033[0m'
echo -e "${BLUE}[Francinette] ${WHITE} zshrc params removed"
