#!/bin/bash
mkdir dependencies
cd dependencies
git clone https://github.com/thestk/rtmidi
cd rtmidi
./autogen.sh
./configure
make
