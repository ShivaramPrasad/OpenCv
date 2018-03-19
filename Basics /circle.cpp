#include<opencv2/opencv.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include "circle.h"

using namespace cv;
using namespace std;


int Amount = 0;

static void onChange(int t, void* userData);

struct data_input{
 Mat* img; 
 Circle* circle;
};


int main(int argc, const char** argv)
{

Mat img(500, 500, CV_8UC3, Scalar(255,255,255));
namedWindow("Original", WINDOW_AUTOSIZE);

Point p0(200,200);

//circle(img, Point(p0),100, CV_RGB(0,255,0));

Circle circle(p0);
//circle.draw(img, Amount);
//circle.set_color(Scalar(0,1,3));


data_input data;
data.img = &img;
data.circle = &circle;


//createTrackbar("Track", "T", onChange, &data, 0, 100);
createTrackbar("T", "Original", &Amount, 360 , onChange, &data);

imshow("Original",img);

//onChange(Amount, &data);

waitKey(0);

return 0;
}

static void onChange(int t, void* userData){
  
 data_input* data = (data_input*)userData;
 Circle* circle = data->circle;

 Mat* img = data->img;
 Mat new_img = img->clone();

 circle->draw(new_img, float(t));
 
 imshow("Original",new_img);
// waitKey(0);

}


