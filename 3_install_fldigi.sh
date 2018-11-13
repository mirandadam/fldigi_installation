#!/bin/bash

if (( $EUID != 0 )); then
    echo "This script needs root privileges for installing fldigi."
    exit
fi

cd fldigi-current/*
make install
cd ../../flrig-*/
make install
cd ../../linsim-*/
make install
