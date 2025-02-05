#!/bin/bash

if [ -z "${INSTALL_DIR}" ]; then
    INSTALL_DIR=$HOME
fi
mkdir -p $INSTALL_DIR/.tmp_francinette
if ls -l $INSTALL_DIR/francinette-image | grep "francinette.tar" &> /dev/null; then
    mv $INSTALL_DIR/francinette-image/francinette.tar $INSTALL_DIR/.tmp_francinette/
fi
