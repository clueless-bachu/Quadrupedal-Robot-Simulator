using System.Collections;
using System.Text;
using ROSBridgeLib.std_msgs;
using SimpleJSON;
using UnityEngine;

namespace ROSBridgeLib {
	namespace custom_msgs {
		public class ImuMsg : ROSBridgeMsg {
			private double _acc_x,_acc_y,_acc_z,_gyro_r,_gyro_p,_gyro_y;
			private HeaderMsg _header;

			public ImuMsg(JSONNode msg) {
				

				_acc_x = double.Parse(msg["acc_x"]);
				_acc_y = double.Parse(msg["acc_y"]);
				_acc_z = double.Parse(msg["acc_z"]);
				_gyro_r = double.Parse(msg["gyro_r"]);
				_gyro_p = double.Parse(msg["gyro_p"]);
				_gyro_y = double.Parse(msg["gyro_y"]);
				_header = new HeaderMsg (msg ["header"]);
			}

			public ImuMsg(HeaderMsg header,double acc_x,double acc_y, double acc_z, double gyro_r, double gyro_p, double gyro_y) {
				
				_header = header;
				_acc_x = acc_x;
				_acc_y = acc_y;
				_acc_z = acc_z;
				_gyro_r = gyro_r;
				_gyro_p = gyro_p;
				_gyro_y = gyro_y;
			}

			public static string getMessageType() {
				return "control/Imu_data";
			}

			 public HeaderMsg GetHeader()
            {
                return _header;
            }

			public double Getacc_x()
			{
				return _acc_x;
			}
			public  double Getacc_y()
			{
				return _acc_y;
			}
			public double  Getgyro_r()
			{
				return _gyro_r;
			}
			public  double Getgyro_p()
			{
				return _gyro_p;
			}
			public  double Getgyro_y()
			{
				return _gyro_y;
			}

			public override string ToString() {
				return "control/Imu_data [header="+_header.ToString()+
						", acc_x=" + _acc_x +
						", acc_y=" + _acc_y + 
						", acc_z=" + _acc_z +  
						", gyro_r=" + _gyro_r +  
						", gyro_p=" + _gyro_p +
						", gyro_y=" + _gyro_y +
						"]";
			}

			public override string ToYAMLString() {
				return "{\"header\" : " + _header.ToYAMLString() +
						", \"acc_x\": " + _acc_x + 
						", \"acc_y\": " + _acc_y + 
						", \"acc_z\": " + _acc_z + 
						", \"gyro_r\": " + _gyro_r + 
						", \"gyro_p\": " + _gyro_p + 
						", \"gyro_y\": " + _gyro_y + 
						" }";
			}
		}
	}
}

