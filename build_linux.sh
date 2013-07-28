#!/bin/bash

if [ $# -ne 1 ]
then
   echo "Usage: $0 <build dir>"
   exit
fi

build_dir=`readlink -m $1`

PATH=$PATH:$build_dir/3rdPartyLibs/Buildyard/install/bin

make -C `dirname $0` BUILD=$build_dir/3rdPartyLibs/Buildyard CMakeArgs='-DEXTERNAL_PACKAGES_SOURCE_DIR=BINARY_DIR' Boost OpenCV FFmpeg
