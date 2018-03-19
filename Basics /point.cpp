#include "point.h"

template <class T>
Point<T> Point<T>::operator+(Point<T> &p) {
Point X;
X.x=this->x+p.x;
X.y=this->y+p.y;
return X;
}

template <class T>
Point<T> Point<T>::operator-(Point<T> &p) {
Point Y;
Y.x=this->x-p.x;
Y.y=this->y-p.y;
return Y;
}

template <class T>
bool Point<T>::operator==(const Point<T> &p) {
if((this->x == p.x) && (this->y ==p.y)){
return true;
}
else{
return false;
}

}













//template<int>Point;
//template<float>Point;

/*Point Point::operator*(const int v){
Point Z;
Z.x *=v;
Z.y *=v;
return Z;
}*/


