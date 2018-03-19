#include <iostream>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include "opencv2/stitching.hpp"

using namespace std;
using namespace cv;

// store the position of trackbar
int factorAmount=10;

//static void onChange(int pos, void* userInput);


int main(int argc, const char** argv )
{

        Mat img(500, 500, CV_8UC3, Scalar(255,255,255));
        namedWindow("Original", WINDOW_AUTOSIZE);
        

	//line(img, p0, p1, Scalar(0,1,3));
 	//ellipse(img,(256,256),(100,50),0,0,180,255,-1);
        circle(img, Point(200,200),100, CV_RGB(0,255,0));

        // create the Trackbar
        //createTrackbar("Factor", "Original", &factorAmount, 20, onChange);

        imshow("Original", img);

        // Call back to onChange function
        //onChange(factorAmount, &img);

        // wait app for a key to exit
        waitKey(0);

        // Destroy the windows
        destroyWindow("img");

        return 0;
    

}

/*static void onChange(int t , void* userInput)
{
    // result
    Mat imgFactor;
    namedWindow("Modified", WINDOW_AUTOSIZE);//create window for new image

	

    // casting the input user img to
    Mat* img= (Mat*)userInput;
    
 
    
    //Mat element = getStructuringElement( MORPH_RECT, Size(2*pos+1,2*pos+1), Point(pos,pos));
    //img->convertTo(imgFactor, -1, 0.1*pos, pos);
    
    imshow("Modified", imgFactor);
        
} 

*/



