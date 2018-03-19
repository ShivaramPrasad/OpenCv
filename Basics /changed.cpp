#include<opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include "circle.h"

using namespace cv;
using namespace std;

/*
void Circle::draw(Mat& img){

circle(img, p0_, 100, Scalar(0,0,0),1, 8);
}

void Circle::set_color(Scalar color){
//this.color = color;
color_ = color;
}

*/

void Circle::draw(Mat& img, float t){
 
const float redius =100.0;
const float radiant = (t*M_PI)/360;

std::cout << t << ", " <<p0_.x << ", " << radiant << std::endl;
for(float i=0.0; i<=radiant; i+=-00.1){ 	
 float x = (float)p0_.x + (float)(redius*cos(i)) ;
 float y = (float)p0_.y + (float)(redius*sin(i)) ;


 //circle(img, p, 100, Scalar(0,0,0), 1, 8);
 img.at<cv::Scalar>((int)x,(int)y) = Scalar(0,0,0) ;

}

}
