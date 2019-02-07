#!/bin/bash
exec=lesson3

MAKEFILE=makefile.mak

make -f $MAKEFILE all EXEC=$exec DEBUG=$1 

# Making debuger work
# When program dont compile then do not run those lines at all. To run debuger or normal it must be compiled correctly first.
rc=$?
if [ $rc -eq 0 ];
then
	if [ "$1" != "debug" ]; then  # Run in normal mode
		echo -e '...:::# Uruchamiam Program #:::...\n'
		./build/$exec
	else
		echo -e '...:::# Debugging #:::...\n' # Run program in debug mode
		gdb ./debug/$exec
	fi
	echo -e '\n...:::#   Koniec Programu  #:::...\n'

else
	echo -e '\n...:::#   Błąd kompilacji  #:::...\n'
fi

