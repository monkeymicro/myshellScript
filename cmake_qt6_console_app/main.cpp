#include <iostream>
#include <QDebug>
#include <opencv2/opencv.hpp>

using namespace cv;

using namespace std;

int main(){
    cout << "hello world!!!"<< endl;
    qDebug() << "qt say hello" ;
    Mat src = Mat(314, 314, CV_8U);//UINT
    randu(src, Scalar::all(0), Scalar::all(255));
	imshow("random images", src);
	waitKey(0);
}