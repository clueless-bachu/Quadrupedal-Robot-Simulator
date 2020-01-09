#include<iostream>
#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "sensor_msgs/CompressedImage.h"
#include "sensor_msgs/image_encodings.h"
#include "opencv2/opencv.hpp"
#include <opencv2/highgui/highgui.hpp>
#include<cv_bridge/cv_bridge.h>
#include<image_transport/image_transport.h>

class decompressor
{
private:
	image_transport::Publisher right;// = it.advertise("camera/right", 1);
	image_transport::Publisher left;// = it.advertise("camera/left", 1);
	ros::Subscriber l_imgc;
	ros::Subscriber r_imgc;

public:
	decompressor()
	{
	
	ros::NodeHandle n;
	image_transport::ImageTransport it(n);
	l_imgc = n.subscribe("image/left/compressed",1,&decompressor::leftcallback, this);
	r_imgc= n.subscribe("image/right/compressed",1,&decompressor::rightcallback,this);
	right = it.advertise("camera/right", 1);
	left = it.advertise("camera/left", 1);
	ros::spin();

	}

	void leftcallback(const sensor_msgs::CompressedImageConstPtr& msg )
{
	try
	{
		cv::Mat image = cv::imdecode(cv::Mat(msg->data),1);
		sensor_msgs::Image msg = *(cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg());
		left.publish(msg);
		
	}
	catch(cv_bridge::Exception& e)
	{
		ROS_ERROR("Could not convert to image!");
	}

}

	void rightcallback(const sensor_msgs::CompressedImageConstPtr& msg )
{
	try
	{
		cv::Mat image = cv::imdecode(cv::Mat(msg->data),1);
		sensor_msgs::Image msg = *(cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg());
		right.publish(msg);
	}
	catch(cv_bridge::Exception& e)
	{
		ROS_ERROR("Could not convert to image!");
	}

}

};



int main(int argc, char **argv)
{

	ros::init(argc,argv,"decompressor");
	decompressor node;
}