//capturing the video nd also capture a pic of that person whose key value went wrong

#include<opencv2/opencv.hpp>
#include <vector>

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{

namedWindow("***video footage***", WINDOW_AUTOSIZE);
VideoCapture cap(0);

if(!cap.isOpened()){
return -1;
}

Mat frame;


cap >> frame;
imshow("***video footage***", frame);
waitKey(33); // if waitkey is not zero means its doing some process behind the screen
//if(waitKey(33) >= 0) break;


vector<int> params;

params.push_back(CV_IMWRITE_JPEG_QUALITY);
params.push_back(95);

try
{
	imwrite("theif_pic.jpg", frame, params);
}

catch (runtime_error& ex){
	fprintf(stderr, "Exception converting image to PNG format: %s\n", ex.what());
	return 1;
}

fprintf(stdout, "[+] Saved as PNG format.\n");

return 0;
}
