using ROSBridgeLib;
using ROSBridgeLib.sensor_msgs;
using ROSBridgeLib.std_msgs;
using ROSBridgeLib.geometry_msgs;
using ROSBridgeLib.custom_msgs;
using System.Collections;
using SimpleJSON;
using UnityEngine;

public class ImuData : ROSBridgePublisher {

	public static string GetMessageTopic(){
		return "/imudata";
	}
	public static string GetMessageType(){
		return "control/Imu_data";
	}
    public static string ToYAMLString(ImuMsg msg){
		return msg.ToYAMLString ();
	}
}