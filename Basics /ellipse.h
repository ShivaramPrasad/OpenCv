#ifndef WINDOW_LINE_H
#define WINDOW_LINE_H


#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
using namespace cv;

class Line{

public:

Line(const Point& p0, const Point& p1)
  :p0_(p0), p1_(p1), color_(Scalar(0,0,0))
{}

void draw(Mat& img);
void set_color(Scalar color);
void draw(Mat& img, float t);

private:

Point p0_, p1_;
Scalar color_;
float x, y;

};

#endif
