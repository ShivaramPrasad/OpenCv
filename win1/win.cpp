#include <iostream>
#include <string>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

using namespace std;
using namespace cv;

const String keys =
    "{help h usage ?  |      | print this message   }"
    "{@image          |<none>| image to show        }"
;

// store the position of trackbar
int blurAmount=1;

// call back function to execute every time the trackbar change
static void onChange(int pos, void* userInput);

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
  namedWindow("img", WINDOW_AUTOSIZE);

  // create the Trackbar
  createTrackbar("img", "img", &blurAmount, 50, onChange, &img);

  // Call back to onChange function
  onChange(blurAmount, &img);

  // wait app for a key to exit
  waitKey(0);

  // Destroy the windows
  destroyWindow("img");

  return 0;
}

// Trackbar call back function
static void onChange(int pos, void* userInput)
{
  if(pos <= 0)
    return;

  // result
  Mat imgBlur;

  // casting the input user img to
  Mat* img= (Mat*)userInput;

  // Apply a blur filter
  //exercise: apply a different kernel Size to the blur function and play with the default arguments
  blur(*img, imgBlur, Size(pos, pos));

  // Show the result
  imshow("img", imgBlur);
}
