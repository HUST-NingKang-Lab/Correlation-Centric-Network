# Correlation-Centric-Network

This C++ code reads in a Speices-Centric Netwrok(SCN) and creates its corresponding Correlation-Centric Network(CCN). These line graphs are defined in the paper by T.S.Evans and R.Lambiotte, Line Graphs, Link Partitions and Overlapping Communities, Phys.Rev.E 80 (2009) 016105 arXiv:0903.2181. Please cite this paper and acknowledge use of this code if you use this code. 
A new paper Edge Partitions and Overlapping Communities in Complex Networks.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

This software could be installed in both Linux system and Windows system.No dependent software needs to be installed  

### Installing

Basic Compiling
You can try the following:
-g++ -o correlationcenticnetwork TseGraph.cpp main.cpp
The TseGraph.o and main.o files can be deleted afterwards. 
The g++.exe depends on your compiler, here the standard gnu c++ compiler is used. 
Below for the intel compiler on the altix icpc is needed. 
This produces an executable correlationcenticnetwork (on Windows its correlationcenticnetwork.exe). 
This is run by typing ./correlationcenticnetwork on Unix (simply correlationcenticnetwork on Windows). 
with any options you require. 
If you want to get more complicated, try optimising options: 

g++ -c -O2 -o TseGraph.o TseGraph.cpp
g++ -c -O2 -o main.o main.cpp
g++ -o correlationcenticnetwork TseGraph.o main.o

```
makefile
If you have make then the following makefile might work. 
The makefile is stored as makefileTSE but needs to be renamed to be simply makefile. 
Then just move to the directory with the main.cpp, TseGrapgcpp.cpp, TseGrapgcpp.h and makefile then type make. 

For information on make try mrbook.org/tutorials/make/. 
CC=g++
CFLAGS=-c -Wall
LDFLAGS=-O2

all: correlationcenticnetwork

correlationcenticnetwork: main.o TseGraph.o
	$(CC) $(LDFLAGS) main.o TseGraph.o -o correlationcenticnetwork

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

factorial.o: factorial.cpp
	$(CC) $(CFLAGS) TseGraph.cpp

clean:
	rm -rf *o correlationcenticnetwork

```

## Usage

To make a CCN type 
correlationcenticnetwork -i input_file -o output_file [options]
where the options are:- 
-t n
create CCN of type number n. Default is 2.
-w
read the SCN as a weighted one, otherwise it is unweighted.
-d
read the SCN as a directed one, otherwise it is undirected.
-h
show this usage message.
The CCN types are: 
0
Unweighted and no self loops 
1
Unweighted with self-loops 
2
Weighted and no self loops 
3
Weighted with self-loops 

```

For example try:
 
correlationcenticnetwork -i example/14_dry.txt -o 14dry_linegraph -t 3

the output file and the speices name of members of SCN is also provided in example file.

where the first column is the source vertex, the second is the target vertex and the last is the edge weight. 
Note that the vertices in the line graph are again numbered from 0 in the order of the edges in the input file. 
Thus edge (0,1) in the input file for graph G is vertex 0 in the output file for D(G), 
while edge (3,4) in the input file for graph G is vertex 5 in the output file for D(G). 

```

## License

This project is licensed under the GNU General Public License v3.0
