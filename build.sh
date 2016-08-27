#!/bin/sh

if [ -d build ]
then
    echo "start building"
else
    echo "mkdir output dir"
    mkdir build
    echo "start building"
fi

rm -rf ./build/*
cd build

cmake .. #-DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake ..
make VERBOSE=0
echo "build done"
