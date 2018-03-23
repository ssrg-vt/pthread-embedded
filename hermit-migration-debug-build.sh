#!/bin/bash
TARGET=x86_64-hermit
PREFIX=/opt/hermit

PATH=$PATH:/opt/hermit/bin

make distclean &> /dev/null

./configure --target=$TARGET --prefix=$PREFIX && make -j`nproc`
