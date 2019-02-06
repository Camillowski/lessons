#!/bin/bash
exec=lesson1

MAKEFILE=makefile.mak

make -f $MAKEFILE all DEBUG=$1

# Making debuger work
# When program dont compile then do not run those lines at all. To run debuger or normal it must be compiled correctly first.
if [ "$1" != "debug" ]; then  # Run in normal mode
    echo -e '...:::# Uruchamiam Program #:::...\n'
	./build/$exec
else
	echo -e '...:::# Debugging #:::...\n' # Run program in debug mode
	gdb ./debug/$exec
fi
echo -e '\n...:::#   Koniec Programu  #:::...\n'



