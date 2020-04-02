# taken from http://mrbook.org/tutorials/make/ CC=g++ CFLAGS=-c
-Wall LDFLAGS=-O2

all: correlationcenticnetwork

correlationcenticnetwork: main.o TseGraph.o
	$(CC) $(LDFLAGS) main.o TseGraph.o -o correlationcenticnetwork

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) TseGraph.cpp

clean:
	rm -rf *o correlationcenticnetwork
