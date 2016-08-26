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
#export CFLAGS=" -m32 -mcpu=8548 -mabi=spe -mspe -mfloat-gprs=double --sysroot=/opt/fsl-networking/QorIQ-SDK-V1.7/sysroots/ppce500v2-fsl-linux-gnuspe"
#export CXXFLAGS=" -m32 -mcpu=8548 -mabi=spe -mspe -mfloat-gprs=double --sysroot=/opt/fsl-networking/QorIQ-SDK-V1.7/sysroots/ppce500v2-fsl-linux-gnuspe"

cmake ../uC-CPU/ #-DCMAKE_TOOLCHAIN_FILE=../p1020_toolchain.cmake ..
make VERBOSE=0 
#objdump -D RTS > RTSdump
