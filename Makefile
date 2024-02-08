CC = gcc
CFLAGS = -Wall

all: logo

logo:
ifeq ($(OS),Windows_NT)
	$(CC) $(CFLAGS) -o logo.exe logo.c logo-lib.c
	$(CC) $(CFLAGS) -o liblogo.dll -shared -fPIC logo-lib.c
else
ifeq ($(shell uname),Darwin)
	$(CC) $(CFLAGS) logo-lib.c logo.c  -o logo 
	$(CC) $(CFLAGS) -o liblogo.dylib -shared -fPIC logo-lib.c
else
	$(CC) $(CFLAGS) logo-lib.c logo.c  -o logo 
	$(CC) $(CFLAGS) -o liblogo.so -shared -fPIC logo-lib.c
endif
endif

clean:
	rm -f logo logo.exe liblogo.dylib liblogo.so liblogo.dll

