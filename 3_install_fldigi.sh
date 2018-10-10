#!/bin/bash

if (( $EUID != 0 )); then
    echo "This script needs root privileges for installing fldigi."
    exit
fi

cd fldigi-current/*
make install
cd ../../flrig-1.3.40/
make install
cd ../../linsim-2.0.3/
make install
