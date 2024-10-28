#!/bin/bash
if [ -d dependencies ]; then
	echo "nothing to do"
else
	mkdir dependencies
	cd dependencies
	git clone https://github.com/thestk/rtmidi
	cd rtmidi
	./autogen.sh
	./configure
	make
fi
