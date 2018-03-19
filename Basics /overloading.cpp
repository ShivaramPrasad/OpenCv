#include <iostream>


using namespace std;

class Point{

public:
	Point()
        :x(0),y(0)
	{}

	Point(int x, int y)
        :x(x),y(y)
	{}

	Point operator+(Point& p){
 	Point X;
	
	X.x= this->x + p.x;
	X.y= this->y + p.y;
	
	return X;	
	}

int x,y;

};

int main(){

Point A,B;
A.x=10;
B.x=20;
A.y=9;
B.y=5;
//A(3,4);

auto c=A+B;
cout<<c;
cout<<c.x<<c.y;
return 0;
}
