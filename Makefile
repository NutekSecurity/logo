CC = gcc
CFLAGS = -Wall

all: logo
	$(CC) $(CFLAGS) -o logo logo.c
	# compile logo program for windows
	$(CC) $(CFLAGS) -o logo.exe logo.c
	# compile library logo-lib for macOS and iOS
	$(CC) $(CFLAGS) -o liblogo.dylib -shared -fPIC logo-lib.c
	# compile library logo-lib for linux and android
	$(CC) $(CFLAGS) -o liblogo.so -shared -fPIC logo-lib.c
	# compile library logo-lib for windows
	$(CC) $(CFLAGS) -o liblogo.dll -shared -fPIC logo-lib.c

clean:
	rm -f logo logo.exe liblogo.dylib liblogo.so liblogo.dll

