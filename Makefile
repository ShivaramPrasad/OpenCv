.PHONY: all

all: clean
	g++ -std=c++1y -o main main.cpp point.cpp -Wall -O `pkg-config --cflags --libs opencv`
	

clean:
	rm -f *.o main 

