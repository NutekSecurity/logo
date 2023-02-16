CC = gcc
CFLAGS = -Wall

build: logo.c
	$(CC) $(CFLAGS) -o logo logo.c

clean:
	rm -f logo