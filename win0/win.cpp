#include <iostream>
#include <string>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

using namespace std;
using namespace cv;

const String keys =
    "{help h usage ?  |      | print this message   }"
    "{@image          |<none>| first image to show        }"
    "{@image1         |<none>| second image to show        }"
;

//exercise: add a second input image and show it in the WINDOW_AUTOSIZE

int main( int argc, const char** argv )
{
  //its used to get the param
  CommandLineParser parser(argc, argv, keys);
  parser.about("ISEP C++ 2017");

  if (parser.has("help")) {
    parser.printMessage();
    return 0;
  }

  String img_filename = parser.get<String>(0);
  String img_filename1 = parser.get<String>(1);

  if (!parser.check()) {
    parser.printErrors();
    return 0;
  }

  Mat img = imread(img_filename);
  Mat img1 = imread(img_filename1);
//two windows with predefined windows func 
  namedWindow("WINDOW_NORMAL", WINDOW_NORMAL); 
  namedWindow("WINDOW_AUTOSIZE", WINDOW_AUTOSIZE);

  // show images
  imshow("WINDOW_NORMAL", img);
  imshow("WINDOW_AUTOSIZE", img1);

  //waiting to presss the key
  waitKey(0);

  // Move window
  moveWindow("WINDOW_NORMAL", 40, 40);
  moveWindow("WINDOW_AUTOSIZE", 400, 40);
  waitKey(0);

  // Resize window, only non autosize
  resizeWindow("WINDOW_NORMAL", 200, 300);
  waitKey(0);

  // Destroy the windows
  destroyWindow("WINDOW_NORMAL");
  destroyWindow("WINDOW_AUTOSIZE");

  // Destroy all windows
  destroyAllWindows();
  return 0;
}
