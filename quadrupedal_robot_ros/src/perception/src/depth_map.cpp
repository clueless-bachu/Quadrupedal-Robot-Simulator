// #include<iostream>
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/core/core.hpp"
#include <opencv2/imgproc/imgproc.hpp>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "sensor_msgs/image_encodings.h"
#include <cv_bridge/cv_bridge.h>

cv::Ptr<cv::StereoSGBM> sgbm =
     cv::StereoSGBM::create 
     (0,16,3,10,100, 50,0,5,200,2
     	,cv::StereoSGBM::MODE_SGBM );

void callback(const sensor_msgs::ImageConstPtr& left, const sensor_msgs::ImageConstPtr& right)
{
	// std::cout<<"Callback is called"<<std::endl;
	cv_bridge::CvImagePtr ptrl,ptrr;

	ptrl = cv_bridge::toCvCopy(left,sensor_msgs::image_encodings::BGR8);
	ptrr = cv_bridge::toCvCopy(right,sensor_msgs::image_encodings::BGR8);

	cv::Mat disp,disp8;
	sgbm->compute(ptrl->image,ptrr->image,disp);
	cv::normalize(disp, disp8, 0, 255, CV_MINMAX, CV_8U);
	cv::imshow("disparity",disp8);
	cv::waitKey(3);

}


int main(int argc, char **argv)
{
	ros::init(argc,argv,"depth_map");
	ros::NodeHandle n;

	message_filters::Subscriber<sensor_msgs::Image> left_img(n,"camera/left",1);
	message_filters::Subscriber<sensor_msgs::Image> right_img(n,"camera/right",1);
	message_filters::TimeSynchronizer<sensor_msgs::Image,sensor_msgs::Image> sync(left_img,right_img,10);
	sync.registerCallback(boost::bind(&callback,_1,_2));	

	ros::spin();


	// cv::Mat left,right, g1,g2,disp,disp8;
	// left = cv::imread("/home/vasista/left.png", cv::IMREAD_COLOR);
	// right= cv::imread("/home/vasista/right.png", cv::IMREAD_COLOR); 

	// cv::cvtColor(left,g1,CV_BGR2GRAY);
	// cv::cvtColor(right,g2,CV_BGR2GRAY);

    

    
	// cv::imshow("left", left);
	// cv::imshow("right", right);
	// cv::imshow("disp", disp8);


	// cv::waitKey(0);
	// cv::destroyAllWindows();


 }
