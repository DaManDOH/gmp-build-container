CC=g++
FLAGS=-std=c++26 -Werror -Wall -Wextra -Wpedantic
DFLAGS=-g -ggdb

all: proof

proof: main.o
	${CC} ${FLAGS} main.o -o proof

main.o: main.cpp
	${CC} ${FLAGS} -c main.cpp

clean:
	rm -f *.o proof
