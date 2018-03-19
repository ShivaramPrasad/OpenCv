#ifndef POINT_H
#define POINT_H

template <class T> 
class Point {
 public:
 Point()
 :x(0),y(0)
 {}
 Point(T x,T y)
 :x(x),y(y)
 {}

 T x,y;
 Point<T> operator+(Point<T> &p);
 Point<T> operator-(Point<T> &p);
 bool operator==(const Point<T> &p); 
 //Point operator*(const int v);
};

#endif 						//WINDOW_DRAWLINE_H

