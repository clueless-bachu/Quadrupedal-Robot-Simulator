using System.Collections;
using System.Text;
using ROSBridgeLib.std_msgs;
using SimpleJSON;
using UnityEngine;

namespace ROSBridgeLib {
	namespace custom_msgs {
		public class StateMsg : ROSBridgeMsg {
			private double _error_dist, _error_angle, _x,_y,_z,_dx,_dy,_dz,_roll,_pitch,_yaw,_droll,_dpitch,_dyaw,_flj,_fltl,_flbl,_frj,_frtl,_frbl,_blj,_bltl,_blbl,_brj,_brtl,_brbl,_dflj,_dfltl,_dflbl,_dfrj,_dfrtl,_dfrbl,_dblj,_dbltl,_dblbl,_dbrj,_dbrtl,_dbrbl;
			private HeaderMsg _header;

			public StateMsg(JSONNode msg) {
				_header = new HeaderMsg (msg ["header"]);
				_error_dist = double.Parse(msg["error_dist"]);
				_error_angle= double.Parse(msg["error_angle"]);
				_x= double.Parse(msg["x"]);
				_y= double.Parse(msg["y"]);
				_z= double.Parse(msg["z"]);
				_dx= double.Parse(msg["dx"]);
				_dy= double.Parse(msg["dy"]);
				_dz= double.Parse(msg["dz"]);
				_roll= double.Parse(msg["roll"]);
				_pitch= double.Parse(msg["pitch"]);
				_yaw= double.Parse(msg["yaw"]);
				_droll= double.Parse(msg["droll"]);
				_dpitch= double.Parse(msg["dpitch"]);
				_dyaw= double.Parse(msg["dyaw"]);
				_flj= double.Parse(msg["flj"]);
				_fltl= double.Parse(msg["fltl"]);
				_flbl= double.Parse(msg["flbl"]);
				_frj= double.Parse(msg["frj"]);
				_frtl= double.Parse(msg["frtl"]);
				_frbl= double.Parse(msg["frbl"]);
				_blj= double.Parse(msg["blj"]);
				_bltl= double.Parse(msg["bltl"]);
				_blbl= double.Parse(msg["blbl"]);
				_brj= double.Parse(msg["brj"]);
				_brtl= double.Parse(msg["brtl"]);
				_brbl= double.Parse(msg["brbl"]);
				_dflj= double.Parse(msg["dflj"]);
				_dfltl= double.Parse(msg["dfltl"]);
				_dflbl= double.Parse(msg["dflbl"]);
				_dfrj= double.Parse(msg["dfrj"]);
				_dfrtl = double.Parse(msg["dfrtl"]);
				_dfrbl = double.Parse(msg["dfrbl"]);
				_dblj = double.Parse(msg["dblj"]);
				_dbltl= double.Parse(msg["dbltl"]);
				_dblbl= double.Parse(msg["dblbl"]);
				_dbrj= double.Parse(msg["dbrj"]);
				_dbrtl= double.Parse(msg["dbrtl"]);
				_dbrbl= double.Parse(msg["dbrbl"]);
			}

			public StateMsg(HeaderMsg header,double error_dist,double error_angle,double x,double y,double z,double dx,double dy,double dz,double roll,double pitch,double yaw,double droll,double dpitch,double dyaw,double flj,double fltl,double flbl,double frj,double frtl,double frbl,double blj,double bltl,double blbl,double brj,double brtl,double brbl,double dflj,double dfltl,double dflbl,double dfrj,double dfrtl,double dfrbl,double dblj,double dbltl,double dblbl,double dbrj,double dbrtl,double dbrbl)
			{				
				_header = header;
				_error_dist =error_dist;
				_error_angle=error_angle;
				_x= x;
				_y= y;
				_z= z;
				_dx=dx;
				_dy=dy;
				_dz=dz;
				_roll=roll;
				_pitch=pitch;
				_yaw= yaw;
				_droll=droll;
				_dpitch=dpitch;
				_dyaw= dyaw;
				_flj= flj;
				_fltl=fltl;
				_flbl= flbl;
				_frj= frj;
				_frtl=frtl;
				_frbl=frbl;
				_blj= blj;
				_bltl=bltl;
				_blbl=blbl;
				_brj= brj;
				_brtl=brtl;
				_brbl=brbl;
				_dflj=dflj;
				_dfltl=dfltl;
				_dflbl=dflbl;
				_dfrj=dfrj;
				_dfrtl=dfrtl;
				_dfrbl=dfrbl;
				_dblj=dblj; 
				_dbltl=dbltl;
				_dblbl=dblbl;
				_dbrj= dbrj;
				_dbrtl=dbrtl;
				_dbrbl=dbrbl;
			}

			public static string getMessageType() {
				return "deeprl/State";
			}

			 public HeaderMsg GetHeader()
            {
                return _header;
            }

			public double Geterror_angle()
			{
				return _error_angle;
			}
			public  double Geterror_dist()
			{
				return _error_dist;
			}
			public double  Getx()
			{
				return _x;
			}
			public  double Gety()
			{
				return _y;
			}
			public  double Getz()
			{
				return _z;
			}
			public  double Getdx()
			{
				return _dx;
			}
			public  double Getdy()
			{
				return _dy;
			}
			public  double Getdz()
			{
				return _dz;
			}
			
			public double Getroll()
			{
				return _roll;
			}
			public  double Getpitch()
			{
				return _pitch;
			}
			public double  Getyaw()
			{
				return _yaw;
			}
			public  double Getdroll()
			{
				return _droll;
			}
			public  double Getdpitch()
			{
				return _dpitch;
			}

			public double Getdyaw()
			{
				return _dyaw;
			}
			public  double Getflj()
			{
				return _flj;
			}
			public double  Getfltl()
			{
				return _fltl;
			}
			public  double Getflbl()
			{
				return _flbl;
			}
			public  double Getfrj()
			{
				return _frj;
			}

			public double Getfrtl()
			{
				return _frtl;
			}
			public  double Getfrbl()
			{
				return _frbl;
			}
			public double  Getblj()
			{
				return _blj;
			}
			public  double Getbltl()
			{
				return _bltl;
			}
			public  double Getblbl()
			{
				return _blbl;
			}
			public double  Getbrj()
			{
				return _brj;
			}
			public  double Getbrtl()
			{
				return _brtl;
			}
			public  double Getbrbl()
			{
				return _brbl;
			}
			public  double Getdflj()
			{
				return _dflj;
			}
			public double  Getdfltl()
			{
				return _dfltl;
			}
			public  double Getdflbl()
			{
				return _dflbl;
			}
			public  double Getdfrj()
			{
				return _dfrj;
			}

			public double Getdfrtl()
			{
				return _dfrtl;
			}
			public  double Getdfrbl()
			{
				return _dfrbl;
			}
			public double  Getdblj()
			{
				return _dblj;
			}
			public  double Getdbltl()
			{
				return _dbltl;
			}
			public  double Getdblbl()
			{
				return _dblbl;
			}
			public double  Getdbrj()
			{
				return _dbrj;
			}
			public  double Getdbrtl()
			{
				return _dbrtl;
			}
			public  double Getdbrbl()
			{
				return _dbrbl;
			}

			public override string ToString() {
				return "deeprl/State [header="+_header.ToString()+
						", error_dist=" +_error_dist+
						", error_angle="+_error_angle+
						", x="+ _x+
						", y="+ _y+
						", z="+ _z+
						", dx="+_dx+
						", dy="+_dy+
						", dz="+_dz+
						", roll="+_roll+
						", pitch="+_pitch+
						", yaw="+ _yaw+
						", droll="+_droll+
						", dpitch="+_dpitch+
						", dyaw="+ _dyaw+
						", flj="+ _flj+
						", fltl="+_fltl+
						", flbl="+ _flbl+
						", frj="+ _frj+
						", frtl="+_frtl+
						", frbl="+_frbl+
						", blj="+ _blj+
						", bltl="+_bltl+
						", blbl="+_blbl+
						", brj="+ _brj+
						", brtl="+_brtl+
						", brbl="+_brbl+
						", dflj="+_dflj+
						", dfltl="+_dfltl+
						", dflbl="+_dflbl+
						", dfrj="+_dfrj+
						", dfrtl="+_dfrtl+
						", dfrbl="+_dfrbl+
						", dblj="+_dblj+
						", dbltl="+_dbltl+
						", dblbl="+_dblbl+
						", dbrj="+ _dbrj+
						", dbrtl="+_dbrtl+
						", dbrbl="+_dbrbl+
						"]";
			}

			public override string ToYAMLString() {
				return "{\"header\" : " + _header.ToYAMLString() +
						", \"error_dist\": " +_error_dist+
						", \"error_angle\": "+_error_angle+
						", \"x\": "+ _x+
						", \"y\": "+ _y+
						", \"z\": "+ _z+
						", \"dx\": "+_dx+
						", \"dy\": "+_dy+
						", \"dz\": "+_dz+
						", \"roll\": "+_roll+
						", \"pitch\": "+_pitch+
						", \"yaw\": "+ _yaw+
						", \"droll\": "+_droll+
						", \"dpitch\": "+_dpitch+
						", \"dyaw\": "+ _dyaw+
						", \"flj\": "+ _flj+
						", \"fltl\": "+_fltl+
						", \"flbl\": "+ _flbl+
						", \"frj\": "+ _frj+
						", \"frtl\": "+_frtl+
						", \"frbl\": "+_frbl+
						", \"blj\": "+ _blj+
						", \"bltl\": "+_bltl+
						", \"blbl\": "+_blbl+
						", \"brj\": "+ _brj+
						", \"brtl\": "+_brtl+
						", \"brbl\": "+_brbl+
						", \"dflj\": "+_dflj+
						", \"dfltl\": "+_dfltl+
						", \"dflbl\": "+_dflbl+
						", \"dfrj\": "+_dfrj+
						", \"dfrtl\": "+_dfrtl+
						", \"dfrbl\": "+_dfrbl+
						", \"dblj\": "+_dblj+
						", \"dbltl\": "+_dbltl+
						", \"dblbl\": "+_dblbl+
						", \"dbrj\": "+ _dbrj+
						", \"dbrtl\": "+_dbrtl+
						", \"dbrbl\": "+_dbrbl+
						" }";
			}
		}
	}
}

