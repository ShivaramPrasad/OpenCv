#include<opencv2/opencv.hpp>

int main(int argc, char** argv)
{

cv::Mat imgOriginal;

imgOriginal = cv::imread("/home/shiva/Documents/Multimedia/win0/joconde.jpg");

if(imgOriginal.empty()) return -1;

cv::namedWindow("ex", cv::WINDOW_AUTOSIZE);

cv::imshow("ex", imgOriginal);

cv::waitKey(0);

cv::destroyWindow("ex");

return 0;

}



