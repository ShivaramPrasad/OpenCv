#include<opencv2/opencv.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <iostream>
#include <string>

using namespace std;
using namespace cv;


struct data_input{
Mat* img;
vector<Point>coloredPoints;
Point center;
int radius;
};

static void onChange(int pos, void* userInput);

static void onMouse(int event, int x, int y, int, void* userInput);

void draw(const data_input *data);

int factorAmount =20;


int main( int argc, const char** argv )
{
Mat img(300,300, CV_8UC4, Scalar(255,255,255));

namedWindow("img", WINDOW_NORMAL);

data_input data;
data.img = &img;
data.center = Point(150,150);


std::ifstream file("points.txt");
if(file.good()){
int x,y;
while(file>>x>>y){
data.coloredPoints.push_back(Point(x,y));
}
}

createTrackbar("ChangeColor", "img", &factorAmount, 100, onChange, &data);

setMouseCallback("img", onMouse, &data);

onChange(factorAmount, &data);

//waitKey(0);
char ch;

while(true){

ch = waitKey(10);

switch(ch){


case 'q':
exit(0);
break;


case 's':
std::ofstream file("points.txt");
for(auto Point : data.coloredPoints){
//std::stringstream ss;
file<<Point.x<<" "<<Point.y<<endl;
//file<<ss;	
}
break;


}

}

//destroyWindow("img");

return 0;

}

static void onChange(int radius, void* userInput){
if(radius <=0)
  return;

data_input *data= ((data_input*)userInput);

Mat img = data->img->clone();
data->radius= radius;

draw(data);

}


static void onMouse(int event, int x, int y, int, void* userInput ){

if(event != EVENT_LBUTTONDOWN)
	return;

data_input *data= ((data_input*)userInput);

data->coloredPoints.push_back(Point(x,y));
draw(data);

}

void draw(const data_input *data){

Mat img = data->img->clone();
circle(img, data->center, data->radius, Scalar(0,0,255),1,8);

for(Point p: data->coloredPoints){

auto x= (p.x - data->center.x);
auto y= (p.y - data->center.y);

if(sqrt(x*x+y*y)<= data->radius)
circle(img, p, 3, Scalar(0,255,0),-1);
else
circle(img, p, 3, Scalar(0,0,255),-1);

}
imshow("img", img);

}
