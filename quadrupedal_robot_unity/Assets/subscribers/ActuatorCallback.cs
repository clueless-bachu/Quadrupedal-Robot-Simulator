using ROSBridgeLib;
using ROSBridgeLib.sensor_msgs;
using System.Collections;
using SimpleJSON;
using UnityEngine;
using ROSBridgeLib.custom_msgs;

public class ActuatorCallback : ROSBridgeSubscriber {

	public new static string GetMessageTopic() {
		return "/ActuatorAngles";
	}  

	public new static string GetMessageType() {
		return "control/Actuator";
	}

	public new static ROSBridgeMsg ParseMessage(JSONNode msg) {
		return new ActuatorMsg(msg);
	}

	public new static void CallBack(ROSBridgeMsg msg) {

		// Debug.Log("here is working");
		var angles = (ActuatorMsg)msg;
		GameObject[] jointAngles = new GameObject[12];
		Debug.Log("Sending joint angles");
		Debug.Log((ActuatorMsg)msg);
		jointAngles[0] = GameObject.Find("frontLeftTopLeg");
		jointAngles[1] = GameObject.Find("frontLeftBottomLeg");
		jointAngles[2] = GameObject.Find("frontRightTopLeg");
		jointAngles[3] = GameObject.Find("frontRightBottomLeg");
		jointAngles[4] = GameObject.Find("backLeftTopLeg");
		jointAngles[5] = GameObject.Find("backLeftBottomLeg");
		jointAngles[6] = GameObject.Find("backRightTopLeg");
		jointAngles[7] = GameObject.Find("backRightBottomLeg");
		jointAngles[8] = GameObject.Find("frontLeftLegJoint");
		jointAngles[9] = GameObject.Find("frontRightLegJoint");
		jointAngles[10] = GameObject.Find("backLeftLegJoint");
		jointAngles[11] = GameObject.Find("backRightLegJoint");


		jointAngles[0].GetComponent<pidLeg>().desiredAngle = angles.Getfrontlefttop();
		jointAngles[1].GetComponent<pidLeg>().desiredAngle = angles.Getfrontleftbottom();
		jointAngles[2].GetComponent<pidLeg>().desiredAngle = angles.Getfrontrighttop();
		jointAngles[3].GetComponent<pidLeg>().desiredAngle = angles.Getfrontrightbottom();
		jointAngles[4].GetComponent<pidLeg>().desiredAngle = angles.Getbacklefttop();
		jointAngles[5].GetComponent<pidLeg>().desiredAngle = angles.Getbackleftbottom();
		jointAngles[6].GetComponent<pidLeg>().desiredAngle = angles.Getbackrighttop();
		jointAngles[7].GetComponent<pidLeg>().desiredAngle = angles.Getbackrightbottom();
		jointAngles[8].GetComponent<pidLeg>().desiredAngle = angles.Getflj();
		jointAngles[9].GetComponent<pidLeg>().desiredAngle = angles.Getfrj();
		jointAngles[10].GetComponent<pidLeg>().desiredAngle = angles.Getblj();
		jointAngles[11].GetComponent<pidLeg>().desiredAngle = angles.Getbrj();

	}
}