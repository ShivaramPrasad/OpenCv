#include<opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include "line.h"

using namespace cv;
using namespace std;

void Line::draw(Mat& img){

line(img, p0_, p1_, Scalar(0,0,0));
}

void Line::set_color(Scalar color){
//this.color = color;
color_ = color;
}

void Line::draw(Mat& img, float t){
 
 float x = p0_.x + (p1_.x-p0_.x)*(t/100.0) ;
 float y = p0_.y + (p1_.y-p0_.y)*(t/100.0) ;

 Point p((int)x, (int)y);

 line(img, p0_, p, Scalar(0,0,0));
}

