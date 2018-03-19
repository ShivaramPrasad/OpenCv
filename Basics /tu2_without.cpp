//program for converting JPEG to PNG format... easy ;)

#include<opencv2/opencv.hpp>
#include <vector>
#include <string>

using namespace cv;
using namespace std;

const String keys =
    "{help h usage ?  |      | print this message   }"
    "{@image          |<none>| first image to show        }"
    "{@keys           |<none>| waiting time for the image to show if key =0 means just for displaying the image if key =1 means convert(JPEG>>PNG)        }"
;

int main(int argc, char** argv)
{

CommandLineParser parser(argc, argv, keys);
parser.about("Break The Rules");

//if in arg v typ help it will call
if (parser.has("help")) {
    parser.printMessage();
    return 0;
  }


String img_filename = parser.get<String>(0);
int keys = parser.get<int>(1);

//if the user didnt pass the argv it will throw the error
if (!parser.check()) {
    parser.printErrors();
    return 0;
  }

Mat img = imread(img_filename);

if(img.empty()) return -1;

namedWindow("Sucess", WINDOW_NORMAL);

imshow("Sucess", img);
waitKey(keys);


if(keys == 1){

vector<int> compression_params;

compression_params.push_back(CV_IMWRITE_PNG_COMPRESSION);
compression_params.push_back(9); 
//For PNG, it can be the compression level ( CV_IMWRITE_PNG_COMPRESSION ) from 0 to 9.
//For JPEG, it can be a quality ( CV_IMWRITE_JPEG_QUALITY ) from 0 to 100. 
//For PPM, PGM, or PBM, it can be a binary format flag ( CV_IMWRITE_PXM_BINARY ), 0 or 1. Default value is 1.

try {
imwrite("joco.png", img, compression_params);
    }

catch (runtime_error& ex) {
fprintf(stderr, "Exception converting image to PNG format: %s\n", ex.what());
return 1;
    }

fprintf(stdout, "[+] Saved as PNG format.\n");

}


else return -1;
    
//destroyWindow("Sucess");



return 0;
}
