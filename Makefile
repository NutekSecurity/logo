CC = gcc
CFLAGS = -Wall

all: logo
	$(CC) $(CFLAGS) -o logo logo.c

clean:
	rm -f logo

