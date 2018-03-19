.PHONY: all

all: clean
	g++ -std=c++1y -o resize.o -c resize.cpp -Wall -O `pkg-config --cflags --libs opencv`
	g++ -o resize resize.o `pkg-config --cflags --libs opencv`

clean:
	rm -f *.o resize 

