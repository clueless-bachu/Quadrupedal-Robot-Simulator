// using System.Collections;
// using System.Collections.Generic;
// using UnityEngine;

// public class ActuatorMsg : MonoBehaviour
// {
//     // Start is called before the first frame update
//     void Start()
//     {
        
//     }

//     // Update is called once per frame
//     void Update()
//     {
        
//     }
// }


using System.Collections;
using System.Text;
using ROSBridgeLib.std_msgs;
using SimpleJSON;
using UnityEngine;

namespace ROSBridgeLib {
	namespace custom_msgs {
		public class ActuatorMsg : ROSBridgeMsg {
			private double _frontlefttop,_frontleftbottom, _frontrighttop, _frontrightbottom, 
			_backlefttop, _backleftbottom, _backrighttop, _backrightbottom, _flj,_frj, _blj,_brj;
			private HeaderMsg _header;

			public ActuatorMsg(JSONNode msg) {
				
				_header = new HeaderMsg (msg ["header"]);
				_frontleftbottom= double.Parse(msg["frontleftbottom"]);
				_frontlefttop= double.Parse(msg["frontlefttop"]);
				_frontrighttop= double.Parse(msg["frontrighttop"]);
				_frontrightbottom= double.Parse(msg["frontrightbottom"]);
				_backlefttop= double.Parse(msg["backlefttop"]);
				_backleftbottom= double.Parse(msg["backleftbottom"]);
				_backrighttop= double.Parse(msg["backrighttop"]);
				_backrightbottom= double.Parse(msg["backrightbottom"]);
				_flj= double.Parse(msg["flj"]);
				_frj= double.Parse(msg["frj"]);
				_blj= double.Parse(msg["blj"]);
				_brj= double.Parse(msg["brj"]);
			}

			public ActuatorMsg(HeaderMsg header,double frontleftbottom,double frontlefttop, double frontrighttop, double frontrightbottom, double backlefttop, double backleftbottom, double backrighttop, double backrightbottom, double flj, double frj, double blj, double brj) 
			{
				
				_header = header;
				_frontleftbottom=frontleftbottom;
				_frontlefttop=frontlefttop;
				_frontrighttop=frontrighttop;
				_frontrightbottom=frontrightbottom;
				_backlefttop=backlefttop;
				_backleftbottom=backleftbottom;
				_backrighttop=backrighttop;
				_backrightbottom=backrightbottom;
				_flj= flj;
				_frj= frj;
				_blj= blj;
				_brj= brj;

			}

			public static string getMessageType() {
				return "control/Actuator";
			}

			 public HeaderMsg GetHeader()
            {
                return _header;
            }
			public double Getfrontlefttop()
			{
				return _frontlefttop;
			}
			public double Getfrontleftbottom()
			{
				return _frontleftbottom;
			}
			public double Getfrontrighttop()
			{
				return _frontrighttop;
			}
			public double Getfrontrightbottom()
			{
				return _frontrightbottom;
			}
			public double Getbacklefttop()
			{
				return _backlefttop;
			}
			public double Getbackleftbottom()
			{
				return _backleftbottom;
			}
			public double Getbackrighttop()
			{
				return _backrighttop;
			}
			public double Getbackrightbottom()
			{
				return _backrightbottom;
			}
			public double Getbrj()
			{
				return _brj;
			}
			public double Getflj()
			{
				return _flj;
			}
			public double Getfrj()
			{
				return _frj;
			}
			public double Getblj()
			{
				return _blj;
			}
			public override string ToString() {
				return "control/Actuator [header="+_header.ToString()+
						", frontlefttop=" + _frontlefttop +
						", frontleftbottom=" + _frontleftbottom + 
						", frontrighttop=" + _frontrighttop +  
						", frontrightbottom=" + _frontrightbottom +  
						", backlefttop=" + _backlefttop +
						", backleftbottom=" + _backleftbottom +
						", backrighttop=" + _backrighttop +
						", backrightbottom=" + _backrightbottom +
						", flj=" + _flj+
						", frj=" + _frj+
						", blj=" + _blj+
						", brj=" + _brj+
						"]";
			}

			public override string ToYAMLString() {
				return "{\"header\" : " + _header.ToYAMLString() +
						", \"frontlefttop\": " + _frontlefttop + 
						", \"frontleftbottom\": " + _frontleftbottom + 
						", \"frontrighttop\": " + _frontrighttop + 
						", \"frontrightbottom\": " + _frontrightbottom + 
						", \"backlefttop\": " + _backlefttop + 
						", \"backleftbottom\": " + _backleftbottom + 
						", \"backrighttop\": " + _backrighttop + 
						", \"backrightbottom\": " + _backrightbottom + 
						", \"flj\": " + _flj + 
						", \"frj\": " + _frj + 
						", \"blj\": " + _blj + 
						", \"brj\": " + _brj + 
						" }";
			}
		}
	}
}

