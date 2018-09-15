#!/bin/bash

if (( $EUID != 0 )); then
    echo "This script needs root privileges for installing packages."
    exit
fi

apt install build-essential autoconf pkg-config
apt install libfltk1.3-dev libpng-dev libsamplerate0-dev portaudio19-dev libpulse-dev libhamlib-dev libsndfile1-dev libflxmlrpc-dev gettext
