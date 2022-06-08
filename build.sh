#!/bin/bash

HERE=`pwd`

cd trunk

cd postgres-REL_14_3

dos2unix ./configure
chmod +x ./configure

dos2unix ./config/*
dos2unix ./src/template/*
dos2unix ./src/backend/utils/*
dos2unix ./src/backend/storage/lmgr/*

./configure

make clean
make -j"$(nproc)"

# make check

make install

# make clean

cd $HERE
