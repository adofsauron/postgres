#!/bin/bash

HERE=`pwd`

cd postgres-REL_14_3

dos2unix ./configure
chmod +x ./configure

dos2unix ./config/*
dos2unix  ./src/template//*


./configure

make clean
make -j"$(nproc)"

# make check

make install

# make clean

cd $HERE