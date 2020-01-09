using ROSBridgeLib;
using ROSBridgeLib.sensor_msgs;
using ROSBridgeLib.std_msgs;
using ROSBridgeLib.geometry_msgs;
using ROSBridgeLib.custom_msgs;
using System.Collections;
using SimpleJSON;
using UnityEngine;

public class StateData : ROSBridgePublisher {

	public static string GetMessageTopic(){
		return "/robot_state";
	}
	public static string GetMessageType(){
		return "deeprl/State";
	}
    public static string ToYAMLString(StateMsg msg){
		return msg.ToYAMLString ();
	}
}