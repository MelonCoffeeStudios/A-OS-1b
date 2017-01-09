CC=gcc
CFLAGS=-Wall

all: mywc.o
	gcc -o mywc mywc.o

mywc.o:
	as -o mywc.o mywc.s
	