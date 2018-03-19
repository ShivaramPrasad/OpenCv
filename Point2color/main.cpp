#include <iostream>
#include <string>

#include "point.h"

using namespace std;

int main( int argc, const char** argv )
{
Point<int> A(20,100);
Point<int> B(40,200);
Point<int> C;
Point<int> D;
//Point E;

C=A+B;

D=A-B;

//E = 5*A;

cout<<"C.x"<<C.x;
cout<<endl;

cout<<"C.y"<<C.y;
cout<<endl;

cout<<"D.x"<<D.x;
cout<<endl;

cout<<"D.y"<<D.y;
cout<<endl;

if(A==B){
	cout << "A is equal to B" << endl;
   } else {
      cout << "A is not equal to B " << endl;
   }

/*cout<<"E.x"<<E.x;
cout<<endl;

cout<<"E.y"<<E.y;
cout<<endl;*/

return(0);
}
