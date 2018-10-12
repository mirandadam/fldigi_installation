#!/bin/bash

cd fldigi-*/
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

cd ../flrig-*
autoreconf
automake --add-missing
autoreconf
./configure --enable-optimizations=native --with-flxmlrpc --with-pulseaudio
make -j $(nproc --all)

cd ../linsim-*
autoreconf
automake --add-missing
autoreconf
./configure --enable-optimizations=native
make -j $(nproc --all)
