using System.Collections;
// using System;
using System.Collections.Generic;
using UnityEngine;

public class inertialMeasurementUnit : MonoBehaviour
{
	private Vector3 localAcc, gloabalAcc, firstVel,secondVel, firstPos,secondPos,curPos,
	prevAngles, curAngles, globalAngleRate, localAngleRate;
	public Vector3 accReadings,gyroReadings;
	private const float mmToMetres = 0.001f,stdDevAcc = 0.4f, stdDevGyro = 0.4f;
	utils utils;
	Vector3 biasAcc,biasGyro;


    // Start is called before the first frame update
    void Start()
    {
     curPos = this.transform.position;
     curAngles=this.transform.eulerAngles;
     curAngles= utils.angleConverterV3(curAngles);
     biasAcc = new Vector3(((float)Random.value-0.5f)/10f,((float)Random.value-0.5f)/10f,((float)Random.value-0.5f)/10f);
     biasGyro =new Vector3(((float)Random.value-0.5f)/10f,((float)Random.value-0.5f)/10f,((float)Random.value-0.5f)/10f);
     }

    // Update is called once per frame
    void Update()
    {	
     	accReadings = accelerometer(false);
		// print(accReadings);
		gyroReadings= gyroscope(false);
		// print(gyroReadings);
    }

    private Vector3 accelerometer(bool noise = true){ 
    	gloabalAcc = (secondVel-firstVel)/Time.deltaTime*mmToMetres;
    	firstVel = secondVel;
    	secondVel = (curPos-secondPos)/Time.deltaTime*mmToMetres;

    	firstPos = secondPos;
    	secondPos = curPos;
    	curPos = this.transform.position;

    	gloabalAcc += Physics.gravity;
        localAcc = utils.Vector3xMatrix(utils.rotationMatrix(utils.degreeToRadian(this.transform.eulerAngles)),gloabalAcc);

        if (noise){
        	Vector3 accNoise = new Vector3(utils.GenerateNormalRandom(biasAcc[0],stdDevAcc),utils.GenerateNormalRandom(biasAcc[1],stdDevAcc),utils.GenerateNormalRandom(biasAcc[2],stdDevAcc));
        	localAcc+= accNoise;
        }
    	return localAcc;
    }

    private Vector3 gyroscope(bool noise = true){
    	globalAngleRate = (curAngles-prevAngles)/Time.deltaTime;
    	prevAngles = curAngles;
    	curAngles = this.transform.eulerAngles;
    	localAngleRate = utils.Vector3xMatrix(utils.rotationMatrix(utils.degreeToRadian(this.transform.eulerAngles)),globalAngleRate);
    	if (noise){
        	Vector3 gyroNoise = new Vector3(utils.GenerateNormalRandom(biasAcc[0],stdDevAcc),utils.GenerateNormalRandom(biasAcc[1],stdDevAcc),utils.GenerateNormalRandom(biasAcc[2],stdDevAcc));
        	localAcc+= gyroNoise;
        }

    	return localAngleRate;
    }

}