using System;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using ROSBridgeLib.std_msgs;
using ROSBridgeLib.geometry_msgs;
using ROSBridgeLib.custom_msgs;
using ROSBridgeLib.sensor_msgs;
using ROSBridgeLib;
using System.Text;
using System.IO;
using static System.Math;
using SimpleJSON;


public class dataPublisher : MonoBehaviour {
	private ROSBridgeWebSocketConnection ros = null;
	DateTime lastFrame;
	DateTime camStart;
	double[] state = new double[38];
	double[] goal= new double[2];
	// Float64[] state = new Float64[38];
	double heading;
	int count = 0;
	private GameObject imuSensor,robot; 
	private inertialMeasurementUnit imu;
    private Camera leftCam, rightCam;
    void Start(){
        ros = new ROSBridgeWebSocketConnection ("ws://192.168.56.102", 9090);
        ros.AddPublisher (typeof(ImuData));
        ros.AddPublisher(typeof(LeftImage));
        ros.AddPublisher(typeof(RightImage));
        ros.AddPublisher (typeof(Gps));
        ros.AddPublisher (typeof(StateData));
        ros.AddSubscriber(typeof(ActuatorCallback));		
        ros.Connect ();
        camStart = DateTime.Now;
        imuSensor = GameObject.Find ("imu");
        imu = imuSensor.GetComponent<inertialMeasurementUnit>();
        leftCam = GameObject.Find("leftRobotCamera").GetComponent<Camera>();
        rightCam = GameObject.Find("rightRobotCamera").GetComponent<Camera>();
        robot = GameObject.Find("quadrupedal");
        state = new double[38] {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
        	,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
       
    }

    void Update()
    {
        // StartCoroutine(SendImu());
		// StartCoroutine(SendState());
    //     StartCoroutine(SendRightImage());
  		// StartCoroutine(SendLeftImage());
        StartCoroutine(SendGps());
        // ros.Render();
    }

    void OnApplicationQuit()
    {
		if(ros!=null)
			ros.Disconnect ();
    }


    IEnumerator SendState(){

        yield return new WaitForEndOfFrame();
        
        var now = DateTime.Now;
        var timeSpan = now - lastFrame;
        var timeSinceStart = now - camStart;
        var timeMessage = new TimeMsg(timeSinceStart.Seconds, timeSinceStart.Milliseconds);
        var headerMessage = new HeaderMsg(count, timeMessage, "state");
        if(Abs(state[0])<100 && Abs(state[1])<20)
        {
        	Vector3 tmp = new Vector3(0.0f,200.0f,0f);
        	Vector3 tmp2 = new Vector3(0.0f,0.0f,0f);
        	robot.transform.position = tmp;
        	robot.transform.eulerAngles = tmp2;
        	UnityEngine.Random rand = new UnityEngine.Random();
        	double a = UnityEngine.Random.value*500.0;
        	double b = UnityEngine.Random.value*500.0;
        	goal = new double[2]{a,b};
        	heading = UnityEngine.Random.value*360 - 180;
        }

        Debug.Log(goal[0]);
        Debug.Log(goal[1]);
        Debug.Log(heading);

        state[5]=state[2];
        state[6]=state[3];
        state[7]=state[4];
        state[11]=state[8];
        state[12]=state[9];
        state[13]=state[10];
		state[26] = state[14];
		state[27] = state[15];
		state[28] = state[16];
		state[29] = state[17];
		state[30] = state[18];
		state[31] = state[19];
		state[32] = state[20];
		state[33] = state[21];
		state[34] = state[22];
		state[35] = state[23];
		state[36] = state[24];
		state[37] = state[25];
        state[2]=robot.transform.position.x;
        state[3]=robot.transform.position.y;
        state[4]=robot.transform.position.z;
        state[8]=robot.transform.eulerAngles.x;
        state[9]=robot.transform.eulerAngles.y;
        state[10]=robot.transform.eulerAngles.z;
        state[14] = GameObject.Find("frontLeftTopLeg").GetComponent<pidLeg>().desiredAngle;
		state[15] = GameObject.Find("frontLeftBottomLeg").GetComponent<pidLeg>().desiredAngle;
		state[16] = GameObject.Find("frontRightTopLeg").GetComponent<pidLeg>().desiredAngle;
		state[17] = GameObject.Find("frontRightBottomLeg").GetComponent<pidLeg>().desiredAngle;
		state[18] = GameObject.Find("backLeftTopLeg").GetComponent<pidLeg>().desiredAngle;
		state[19] = GameObject.Find("backLeftBottomLeg").GetComponent<pidLeg>().desiredAngle;
		state[20] = GameObject.Find("backRightTopLeg").GetComponent<pidLeg>().desiredAngle;
		state[21] = GameObject.Find("backRightBottomLeg").GetComponent<pidLeg>().desiredAngle;
		state[22] = GameObject.Find("frontLeftLegJoint").GetComponent<pidLeg>().desiredAngle;
		state[23] = GameObject.Find("frontRightLegJoint").GetComponent<pidLeg>().desiredAngle;
		state[24] = GameObject.Find("backLeftLegJoint").GetComponent<pidLeg>().desiredAngle;
		state[25] = GameObject.Find("backRightLegJoint").GetComponent<pidLeg>().desiredAngle;
        state[0]=(state[2]-goal[0])*(state[2]-goal[0])+(state[4]-goal[1])*(state[4]-goal[1]);
        state[1]= state[9]- heading;
       

        var cur_state = new StateMsg(headerMessage,state[0],state[1],state[2],state[3],state[4],state[5],state[6],state[7],state[8],state[9],
        										   state[10],state[11],state[12],state[13],state[14],state[15],state[16],state[17],state[18],state[19],
        										   state[20],state[21],state[22],state[23],state[24],state[25],state[26],state[27],state[28],state[29],
        										   state[30],state[31],state[32],state[33],state[34],state[35],state[36],state[37]);
        ros.Publish(StateData.GetMessageTopic(),cur_state );
        ros.Render();
    }



    IEnumerator SendGps(){

        yield return new WaitForEndOfFrame();
        
        var now = DateTime.Now;
        var timeSpan = now - lastFrame;
        var timeSinceStart = now - camStart;
        var timeMessage = new TimeMsg(timeSinceStart.Seconds, timeSinceStart.Milliseconds);
        var headerMessage = new HeaderMsg(count, timeMessage, "gps");
        var pos = robot.transform.position;
        var quat = robot.transform.eulerAngles;
        var quaternion = new QuaternionMsg(quat[0],quat[1],quat[2],0);
        var point = new PointMsg(pos[0],pos[1],pos[2]);
        var pose = new PoseMsg(point, quaternion);

        var gpsmessage = new PoseStampedMsg(headerMessage,pose);
        // Debug.Log(imumessage);
        ros.Publish(Gps.GetMessageTopic(),gpsmessage );
        ros.Render();
    }


    IEnumerator SendImu(){

        yield return new WaitForEndOfFrame();
        
        var now = DateTime.Now;
        var timeSpan = now - lastFrame;
        var timeSinceStart = now - camStart;
        var timeMessage = new TimeMsg(timeSinceStart.Seconds, timeSinceStart.Milliseconds);
        var headerMessage = new HeaderMsg(count, timeMessage, "imu");

        var imumessage = new ImuMsg(headerMessage, imu.accReadings[0],imu.accReadings[1],imu.accReadings[2],imu.gyroReadings[0],imu.gyroReadings[1],imu.gyroReadings[2]); 	
        // Debug.Log(imumessage);
        ros.Publish(ImuData.GetMessageTopic(),imumessage );
        ros.Render();
    }

    IEnumerator SendLeftImage()
    {
    	yield return new WaitForEndOfFrame();

        Texture2D tex = new Texture2D(Screen.width, Screen.height, TextureFormat.RGB24, false);

        RenderTexture RT = new RenderTexture(Screen.width, Screen.height,24);
        leftCam.targetTexture = RT;
        RenderTexture.active = RT;
        leftCam.Render();
		tex.ReadPixels(new Rect(0, 0, Screen.width, Screen.height), 0, 0);
		tex.Apply();
		byte[] data = tex.EncodeToPNG();
		var now = DateTime.Now;
		var timeSpan = now - lastFrame;
		var timeSinceStart = now - camStart;
        lastFrame = now;
		var timeMessage = new TimeMsg(timeSinceStart.Seconds, timeSinceStart.Milliseconds);
		var headerMessage = new HeaderMsg(count, timeMessage, "camera");
		string format = "png";
		var compressedImageMsg = new CompressedImageMsg(headerMessage, format, data);
		ros.Publish(LeftImage.GetMessageTopic(), compressedImageMsg);
		Destroy(tex);
		ros.Render ();
        leftCam.targetTexture = null;
        RT = null;

    }

     IEnumerator SendRightImage()
    {
        yield return new WaitForEndOfFrame();

        Texture2D tex = new Texture2D(Screen.width, Screen.height, TextureFormat.RGB24, false);

        RenderTexture RT = new RenderTexture(Screen.width, Screen.height,24);
        rightCam.targetTexture = RT;
        RenderTexture.active = RT;
        rightCam.Render();
        tex.ReadPixels(new Rect(0, 0, Screen.width, Screen.height), 0, 0);
        tex.Apply();
        byte[] data = tex.EncodeToPNG();
        var now = DateTime.Now;
        var timeSpan = now - lastFrame;
        var timeSinceStart = now - camStart;
        lastFrame = now;
        var timeMessage = new TimeMsg(timeSinceStart.Seconds, timeSinceStart.Milliseconds);
        var headerMessage = new HeaderMsg(count, timeMessage, "camera");
        string format = "png";
        var compressedImageMsg = new CompressedImageMsg(headerMessage, format, data);
        ros.Publish(RightImage.GetMessageTopic(), compressedImageMsg);
        Destroy(tex);
        ros.Render ();
        rightCam.targetTexture = null;
        RT = null;

    }



}