#!/bin/bash

wget -c http://www.w1hkj.com/files/fldigi/fldigi-current.tar.gz
wget -c http://www.w1hkj.com/files/flrig/flrig-1.3.40.tar.gz
wget -c http://www.w1hkj.com/files/test_suite/linsim-2.0.3.tar.gz
tar --one-top-level -xzvf fldigi-current.tar.gz
tar --one-top-level -xzvf flrig-1.3.40.tar.gz
tar -xzvf linsim-2.0.3.tar.gz
