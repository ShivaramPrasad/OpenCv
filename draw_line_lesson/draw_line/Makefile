.PHONY: all

#exercise: complete the make file

all: clean draw_line.a
	g++ -std=c++1y -o demo.o -c demo.cpp -Wall -O `pkg-config --cflags --libs opencv` -I.
	g++ -o demo demo.o `pkg-config --cflags --libs opencv` -L. -ldraw_line

draw_line.a:
	g++ -std=c++1y  -Wall -c DrawLine.cpp -o draw_line.o
	ar rcs libdraw_line.a draw_line.o

clean:
	rm -f *.o demo 

