#!/bin/bash
TARGET=x86_64-hermit
PREFIX=$PWD/../prefix

PATH=$PATH:/opt/hermit/bin

make distclean &> /dev/null

./configure --target=$TARGET --prefix=$PREFIX && make install -j`nproc`
