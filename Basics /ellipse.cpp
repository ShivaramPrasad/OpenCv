#include<opencv2/opencv.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include "line.h"

using namespace cv;
using namespace std;


int Amount = 0;

static void onChange(int t, void* userData);

struct data_input{
 Mat* img; 
 Line* line;
};


int main(int argc, const char** argv)
{

Mat img(500, 500, CV_8UC3, Scalar(255,255,255));
namedWindow("Original", WINDOW_AUTOSIZE);

Point p0(256,256);
Point p1(200,100);

ellipse(img,p0,p1,0,45,225,1,10);

/*
Line line(p0, p1);
//line.draw(img, Amount);
line.set_color(Scalar(0,1,3));


data_input data;
data.img = &img;
data.line = &line;



//createTrackbar("Track", "T", onChange, &data, 0, 100);
createTrackbar("T", "Original", &Amount, 20, onChange, &data);
*/
 imshow("Original",img);

//onChange(Amount, &data);

waitKey(0);

return 0;
}

/*
static void onChange(int t, void* userData){
  
 data_input* data = (data_input*)userData;
 Line* line = data->line;

 Mat* img = data->img;
 Mat new_img = img->clone();

 line->draw(new_img, float(t));
 
 imshow("Original",new_img);
// waitKey(0);

}

*/
