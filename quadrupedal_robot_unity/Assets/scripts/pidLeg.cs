using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pidLeg : MonoBehaviour
{
	public double p,i,d,desiredAngle;
//	public float maximumTorque;
	private double prev_err,sum,error;
	private float torque;
	public Vector3 axis;// =  new Vector3(1f,1f,1f); 
    utils utils;

    // Update is called once per frame
    void Update()
    {
    	// float torque = 4f;
    	error = utils.angleConverter(gameObject.transform.eulerAngles.x)-desiredAngle;
    	torque = (float)(p*error+i*sum+d*(error-prev_err));
    	 // print(gameObject.trafloat.eulerAngles[0]);
    	prev_err = error;
    	sum+= error;
    	// Debug.Log(axis*torque);
    	gameObject.GetComponent<Rigidbody>().AddTorque(axis*torque);
    }
}
