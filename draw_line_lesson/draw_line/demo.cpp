

#include <iostream>
#include <string>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include "DrawLine.h"

using namespace std;
using namespace cv;

const String keys =
    "{help h usage ?  |      | print this message   }"
    "{@image          |<none>| image to show        }"
;


//by default its public in struct but struct and class will perform the same func   

struct data_input {
  Mat* img;
  DrawLine *draw;
};

// call back for mouse input
static void onMouse( int event, int x, int y, int, void* userInput);

int main( int argc, const char** argv )
{

  CommandLineParser parser(argc, argv, keys);
  parser.about("ISEP C++ 2017");

  if (parser.has("help")) {
    parser.printMessage();
    return 0;
  }

  String img_filename = parser.get<String>(0);

  if (!parser.check()) {
    parser.printErrors();
    return 0;
  }

  Mat img = imread(img_filename);
  namedWindow("img", WINDOW_NORMAL);
  imshow("img", img);

  DrawLine draw(img);
  draw.set_color(Scalar(0,255,0));

  data_input data;
  data.img = &img;
  data.draw = &draw;

  // define the callback for ,ouse events
  setMouseCallback("img", onMouse, &data);

  // wait app for a key to exit
  waitKey(0);

  // Destroy the windows
  destroyWindow("img");

  return 0;
}

//Mouse callback
static void onMouse( int event, int x, int y, int, void* userInput )
{
  if( event != EVENT_LBUTTONDOWN )
    return;

  data_input* data = (data_input*)userInput;
  // casting the userInput to the current image
  Mat* img = data->img;
  DrawLine *draw = data->draw;

  draw->add_point(Point(x, y));
  // Draw point
  circle(*img, Point(x, y), 5, Scalar(255,0,0), -1);

  //re-draw the image
  imshow("img", *img);
}
