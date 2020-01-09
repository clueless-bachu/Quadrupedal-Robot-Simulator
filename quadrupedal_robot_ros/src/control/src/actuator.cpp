#include"control/Actuator.h"
#include "geometry_msgs/PoseStamped.h"
#include "ros/ros.h"
#include <Eigen/Dense>
#include<vector>
#include<math.h>
#include<queue>
#define l_2 86
#define l_1 79
#define l_3 10
#define PI 3.141


class actuator
{ 
private:
	ros::Publisher pub;
	ros::Subscriber sub;
	ros::NodeHandle n;
	control::Actuator angles;
	bool flag;
	float par, gait[12];
	std::queue<Eigen::Vector3f> pos;

public:
	actuator(void)
	{
		pub = n.advertise<control::Actuator>("ActuatorAngles",1);
		sub = n.subscribe("/gps", 1, &actuator::callback,this);
		par =45;
		flag=false;
		angles.frontlefttop = -45;
		angles.frontleftbottom =  45;
		angles.frontrighttop =  -45;
		angles.frontrightbottom =  45;
		angles.backlefttop =  -45;
		angles.backleftbottom=  45;
		angles.backrighttop=  -45;
		angles.backrightbottom=  45;
		angles.flj  = 0;
		angles.frj  = 0;
		angles.blj  = 0;
		angles.brj  = 0;
		Eigen::Matrix<float, 3,4> foot_pos = 
		forward_kinematics(0,164,0,0);
		float tmp1[3] = {foot_pos(0,0),foot_pos(1,0),foot_pos(2,0)};
		float tmp2[3]  = {-44,50,8.5};
		pos = gait_position_generator(tmp1,tmp2);
		std::cout<<"1"<<std::endl;
	}

	float getpar()
	{
		return par;
	}
	void actuatorcb(void)
	{
		angles.frontlefttop = gait[0];
		angles.frontleftbottom = gait[1];
		angles.frontrighttop = gait[2];
		angles.frontrightbottom = gait[3];
		angles.backlefttop = gait[4];
		angles.backleftbottom= gait[5];
		angles.backrighttop= gait[6];
		angles.backrightbottom= gait[7];
		angles.flj  = gait[8];
		angles.frj  = gait[9];
		angles.blj  = gait[10];
		angles.brj  = gait[11];
		pub.publish(angles);
		// ros::spinOnce();
	}

	void gait_angle_generator(const geometry_msgs::PoseStamped::ConstPtr& msg)
	{
		/* creates a list of angles that will be used to control the robot legs (this function has to be called continuosly) 
		returns: array with angles in the following format
		IMPORTANT
		INDEX 0 : frontlefttop
		INDEX 1 : frontleftbottom
		INDEX 2 : frontrighttop
		INDEX 3 : frontrightbottom
		INDEX 4 : backlefttop
		INDEX 5 : backleftbottom
		INDEX 6 : backrighttop
		INDEX 7 : backrightbottom
		INDEX 8 : frontleftjoint
		INDEX 9 : frontrightjoint
		INDEX 10: backleftjoint
		INDEX 11: backrightjoint			*/
		std::cout<<"2"<<std::endl;
		Eigen::Vector3f tmp;
		if(!pos.empty()) tmp = pos.front();
		else tmp<< -44,50,8.5;
		pos.pop();
		float world[3] = {tmp(0),tmp(1),tmp(2)};
		float rpos[3] = {msg->pose.position.x,msg->pose.position.y,msg->pose.position.z};
		float inter_vec[3];
		float theta[3];
		interial_to_body(world,rpos, msg->pose.orientation.y, inter_vec);
		endpoint_control(inter_vec[0],inter_vec[1],inter_vec[2],l_1,l_2,l_3,-17,15,8.5, theta);
		Eigen::Matrix<float, 3,4> foot_pos = 
		forward_kinematics(msg->pose.position.x,msg->pose.position.y,msg->pose.position.z,msg->pose.orientation.y);
		// Eigen::Vector3f com = foot_pos.rowwise().mean();
		std::cout<<foot_pos<<std::endl;
		std::cout<<"3"<<std::endl;
		gait[0]=theta[0];
		gait[1]=theta[1];
		gait[2]=par;
		gait[3]=-par;
		gait[4]=par;
		gait[5]=-par;
		gait[6]=par;
		gait[7]=-par;
		gait[8]=theta[2];
		gait[9]=0;
		gait[10]=0;
		gait[11]=0;
		std::cout<<"4"<<std::endl;
	}

	void endpoint_control(float x, float y, float z, float l1, float l2, float l3,float dx, float dy, float dz, float (&theta)[3])
	{
		float delz = z - dz;
		float dely = y - dy;
		float delx = x - dx;
		theta[2] = (std::atan(delz/(dely+0.001)))*180/PI;
		dely =  -dely/std::cos(theta[2]*PI/180)-l3;
		float tmp = (delx*delx+dely*dely+l1*l1-l2*l2)/(2*l1*std::sqrt(delx*delx+dely*dely));
		if(tmp>1) tmp = 1;
		else if(tmp<-1) tmp = -1;
		theta[0] = (std::asin(tmp)
										 - std::atan(dely/(delx+0.001)))*180/PI;
		if(theta[0]>90) theta[0]-=180;
		// else if(theta[0]<-90) theta[0]+=180;
		tmp = -(delx+l1*std::sin(theta[0]*PI/180))/l2;
		// std::cout<<tmp<<std::endl;
		theta[1] = std::asin(tmp)*180/PI;
	}

	void interial_to_body(float world_cord[3], float rpos[3], float yaw, float (&inter_vec)[3])
	{	
		float rel_pos[3] = {world_cord[0]-rpos[0],world_cord[1]-rpos[1],world_cord[2]-rpos[2]};
		float phi;
		float dist = std::sqrt(rel_pos[0]*rel_pos[0]+rel_pos[2]*rel_pos[2]);
		if(rel_pos[0]<0 && rel_pos[2]<0) phi = PI- std::atan(rel_pos[2]/(rel_pos[0]));
		else if(rel_pos[0]<0 && rel_pos[2]>0) phi = -PI- std::atan(rel_pos[2]/(rel_pos[0]));
		else phi = -std::atan(rel_pos[2]/(rel_pos[0]));
		if(yaw>180) yaw-=360;
		float angle = (phi)*180/PI - yaw;
		inter_vec[0] =dist*std::cos(angle*PI/180);
		inter_vec[2] =-dist*std::sin(angle*PI/180);
		inter_vec[1] = rel_pos[1]; 
	}

	std::queue<Eigen::Vector3f> gait_position_generator(float init_pos[3],float final_pos[3],float inter_pos_y = 50, int n = 700)
	{ 
		float inter_pos[3] = {(init_pos[0]+final_pos[0])/2,inter_pos_y,(init_pos[2]+final_pos[2])/2};
		Eigen::Vector3f point;
		std::queue<Eigen::Vector3f> position;

		for(int i=1;i<=n/2;i++) 
		{ 
			point<<
			init_pos[0]+(inter_pos[0]-init_pos[0])*2*i/n,
			init_pos[1]+(inter_pos[1]-init_pos[1])*2*i/n,
			init_pos[2]+(inter_pos[2]-init_pos[2])*2*i/n;

			position.push(point);
		}

		for(int i=1;i<=n/2;i++)
		{
			point<<
			inter_pos[0]+(final_pos[0]-inter_pos[0])*2*i/n,
			inter_pos[1]+(final_pos[1]-inter_pos[1])*2*i/n,
			inter_pos[2]+(final_pos[2]-inter_pos[2])*2*i/n;

			position.push(point);

		}

		return position;
	}

	Eigen::Matrix<float,3,4> forward_kinematics(float x, float y, float z, float yaw )
	 {
	 	Eigen::Matrix<float,3,4> base_pos_body;
	 	base_pos_body<< -17,-17,-133,-133,
	 					15,15,15.0,15,
	 					8.5,111,8.5,111;

	 	Eigen::Matrix<float, 3, 4> pos_inertial;
	 	pos_inertial <<
	 	x,x,x,x,
	 	y,y,y,y,
	 	z,z,z,z;

	 	Eigen::Matrix3f rotation_matrix;
	 	rotation_matrix <<	std::cos(yaw),0,-std::sin(yaw),
	 						0,1,0,
	 						std::sin(yaw),0,std::cos(yaw);

	 	Eigen::Matrix<float, 3, 4> foot_pos;
	 	foot_pos<< 
-l_1*std::sin(angles.frontlefttop )-l_2*std::sin(angles.frontleftbottom),-l_1*std::sin(angles.frontrighttop)-l_2*std::sin(angles.frontrightbottom),-l_1*std::sin(angles.backlefttop)-l_2*std::sin(angles.backleftbottom),-l_1*std::sin(angles.backrighttop)-l_2*std::sin(angles.backrightbottom),
-(l_1*std::cos(angles.frontlefttop )+l_2*std::cos(angles.frontleftbottom)+l_3)*std::cos(angles.flj),-(l_1*std::cos(angles.frontrighttop)+l_2*std::cos(angles.frontrightbottom)+l_3)*std::cos(angles.frj),-(l_1*std::cos(angles.backlefttop)+l_2*std::cos(angles.backleftbottom)+l_3)*std::cos(angles.blj),-(l_1*std::cos(angles.backrighttop)+l_2*std::cos(angles.backrightbottom)+l_3)*std::cos(angles.brj),
-(l_1*std::cos(angles.frontlefttop )+l_2*std::cos(angles.frontleftbottom)+l_3)*std::sin(angles.flj),-(l_1*std::cos(angles.frontrighttop)+l_2*std::cos(angles.frontrightbottom)+l_3)*std::sin(angles.frj),-(l_1*std::cos(angles.backlefttop)+l_2*std::cos(angles.backleftbottom)+l_3)*std::sin(angles.blj),-(l_1*std::cos(angles.backrighttop)+l_2*std::cos(angles.backrightbottom)+l_3)*std::sin(angles.brj);
	
		return rotation_matrix*(base_pos_body + foot_pos) + pos_inertial;
	}

	void callback(const geometry_msgs::PoseStamped::ConstPtr& msg)
	{
		try
		{
				gait_angle_generator(msg);
				actuatorcb();
		}
		catch(std::exception& e)
		{
			std::cout<<"Ending Program\n"<<std::endl;
		}
	}
};

int main(int argc, char **argv)
{
	ros::init(argc,argv,"actuator");
	actuator quad;
	std::cout<<"#####Leg Motion####"<<std::endl;
	ros::spin();
}