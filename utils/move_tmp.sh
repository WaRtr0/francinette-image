#!/bin/bash
mkdir -p $HOME/.tmp_francinette
if ls -l $HOME/francinette-image | grep "francinette.tar" &> /dev/null; then
    mv /home/$USER/francinette-image/francinette.tar /home/$USER/.tmp_francinette/
fi