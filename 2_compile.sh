#!/bin/bash

cd fldigi-current/*
autoreconf
automake --add-missing
autoreconf
./configure --enable-optimizations=native --with-flxmlrpc --with-pulseaudio
#--enable-static generates:
#cannot find -ljpeg
#cannot find -lXrender
#cannot find -lXcursor
#cannot find -lXft
#cannot find -lfontconfig
#cannot find -lXinerama
make -j $(nproc --all)

cd ../../flrig-1.3.40/
autoreconf
automake --add-missing
autoreconf
./configure --enable-optimizations=native --with-flxmlrpc --with-pulseaudio
make -j $(nproc --all)

cd ../linsim-2.0.3
autoreconf
automake --add-missing
autoreconf
./configure --enable-optimizations=native
make -j $(nproc --all)
