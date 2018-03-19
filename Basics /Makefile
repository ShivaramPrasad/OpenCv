/*
.PHONY: all

#exercise: complete the make file

all: clean line_.a
	g++ -std=c++1y -o line.o -c line.cpp -Wall -O `pkg-config --cflags --libs opencv` -I.
	g++ -o line line.o `pkg-config --cflags --libs opencv` -L. -lline_

line_.a:
	g++ -std=c++1y  -Wall -c modifyLine.cpp -o line_.o
	ar rcs libline_.a line_.o

clean:
	rm -f *.o line

*/


For this program: 
g++ -std=c++1y modifyLine.cpp line.cpp -Wall -O `pkg-config --cflags --libs opencv`
