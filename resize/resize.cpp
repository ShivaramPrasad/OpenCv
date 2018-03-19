#include <iostream>
#include <string>
#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

//instead of saying cv:: 
//v can use this
using namespace std; //std lib >>contains all the basic func of c++ like matrix
using namespace cv; //cv lib >> contains all func like commandLineParser , resize functions 

// example of use: ./resize joconde.jpg joconde_resized.jpg  -w=340 -h=250

const String keys =
    "{help  ?        |      | print this message   }"
    "{@image         |<none>| image to resize      }"
    "{@output        |<none>| output resized image }"
    "{w width        |<none>| width size           }"
    "{h height       |<none>| height size          }"
;

int main( int argc, const char** argv )
{

  CommandLineParser parser(argc, argv, keys);
  parser.about("ISEP C++ 2017");

  if (parser.has("help")) {
    parser.printMessage();
    return 0;
  }

  String input_image_filename = parser.get<String>(0);
  String output_image_filename = parser.get<String>(1);
  int width = parser.get<int>("width");
  int height = parser.get<int>("height");

  if (!parser.check()) {
    parser.printErrors();
    return 0;
  }

  Mat original_img = imread(input_image_filename);

  if(!original_img.data ) {
    std::cerr << " Wrong file image";
    return -1;
  }
 //new cropped imag 
  Mat cropped_img;

 //calling resize func from cv lib
  resize(original_img, cropped_img, Size(width, height));
  imwrite(output_image_filename, cropped_img);

  std::cout << "Resized done";

  //exercise : add the code here in order to showing the original and cropped image
  imshow("Cropped image", cropped_img);
  waitKey(0);
  return 0;
}

