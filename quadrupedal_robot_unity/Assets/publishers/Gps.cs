// using System.Collections;
// using System.Collections.Generic;
// using UnityEngine;

// public class Gps : MonoBehaviour
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


using ROSBridgeLib;
using ROSBridgeLib.sensor_msgs;
using ROSBridgeLib.std_msgs;
using ROSBridgeLib.geometry_msgs;
// using ROSBridgeLib.custom_msgs;
using System.Collections;
using SimpleJSON;
using UnityEngine;

public class Gps : ROSBridgePublisher {

	public static string GetMessageTopic(){
		return "/gps";
	}
	public static string GetMessageType(){
		return "geometry_msgs/PoseStamped";
	}
    public static string ToYAMLString(PoseStampedMsg msg){
		return msg.ToYAMLString ();
	}
}