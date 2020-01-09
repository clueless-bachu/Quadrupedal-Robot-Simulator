using System.Collections;
using System.Collections.Generic;
using static System.Math;
using UnityEngine;
using MLAgents;

public class RobotAgent : Agent
{
	Vector3 goal,axis;
	float err_dist_x,err_dist,prev_err_dist,err_dist_z,prev_err_dist_x,prev_err_dist_z,cur_roll,cur_pitch,prev_roll,prev_pitch;
	double rew;

	float[] cur_angles = new float[12];
	float[] prev_angles = new float[12];
	public GameObject[] limbs = new GameObject[12];

	Rigidbody rBody;
    void Start ()
    {
        rBody = GetComponent<Rigidbody>();
    }


    public override void AgentReset()
    {
    	this.rBody.angularVelocity = Vector3.zero;  
		this.rBody.velocity = Vector3.zero;  	
    	this.transform.position = new Vector3( 0, 170.0f, 0);
    	this.transform.eulerAngles = new Vector3(0f,0f,0f);
		// Random r = new Random();
    	goal = new Vector3(Random.value * 500,Random.value * 500,0);
    	for(int i=0;i<12;i++)
    	{
    		limbs[i].GetComponent<Rigidbody>().angularVelocity = Vector3.zero;  
			limbs[i].GetComponent<Rigidbody>().velocity = Vector3.zero;  
    		if(i%3 == 0)
    		{
    			limbs[i].transform.eulerAngles = new Vector3(0f,0f,0f);
    		}
    		else{
    			limbs[i].transform.eulerAngles = new Vector3(0f,90f,0f);
    		}
    	}

    	prev_pitch=0;
    	prev_roll=0;
    	prev_err_dist=0;
    	prev_err_dist_x=0;
    	prev_err_dist_z=0;
    	prev_angles = new float[12] {0,0,0,0,0,0,0,0,0,0,0,0};
    }

    public override void CollectObservations()
	{
	    // Target and Agent positions
		err_dist_x = (this.transform.position.x-goal[0])/500;
		err_dist_z = (this.transform.position.z-goal[1])/500;
		// err_ang = ((float)utils.angleConverter(this.transform.eulerAngles.y) - goal[2])/180;
	    AddVectorObs(err_dist_x);
	    AddVectorObs(err_dist_z);
	    // AddVectorObs(err_ang);
	    AddVectorObs(prev_err_dist_x);
	    AddVectorObs(prev_err_dist_z);
	    // AddVectorObs(prev_err_ang);
	    prev_err_dist_x = err_dist_x;
	    prev_err_dist_z = err_dist_z;
	    AddVectorObs(cur_roll/45);
	    AddVectorObs(cur_pitch/45);
	    AddVectorObs(prev_roll/45);
	    AddVectorObs(prev_pitch/45);
	    prev_roll = cur_roll;
	    prev_pitch= cur_pitch;
	    for(int i =0;i<12;i++)
	    {		
	    		cur_angles[i] = ((float)utils.angleConverter(limbs[i].transform.eulerAngles.x))/180; 
	    		AddVectorObs(cur_angles[i]);
	    }
	    for(int i =0;i<12;i++)
	    {		
	    		AddVectorObs((float)prev_angles[i]);
	    		prev_angles[i] = cur_angles[i]; 
	    }
	}

	public override void AgentAction(float[] vectorAction, string textAction)
	{
		for(int i=0;i<12;i++)
		{
			if(i%3==0)
			{
				axis = new Vector3(0,0,1);
				limbs[i].GetComponent<pidLeg>().desiredAngle = vectorAction[i]*45;
			}
			else if((i+2)%3==0){
				axis = new Vector3(-1,0,0);
				limbs[i].GetComponent<pidLeg>().desiredAngle = vectorAction[i]*70;
			}
			else{
				axis = new Vector3(-1,0,0);
				limbs[i].GetComponent<pidLeg>().desiredAngle = -vectorAction[i]*70;	
			}
		}
		//Collect Rewards
		err_dist = (float)Sqrt((this.transform.position.x-goal[0])*(this.transform.position.x-goal[0])+(this.transform.position.z-goal[1])*(this.transform.position.z-goal[1]));
		// err_ang = this.transform.eulerAngles.y - goal[2];
		cur_roll = (float)utils.angleConverter(this.transform.eulerAngles.x);
	    cur_pitch= (float)utils.angleConverter(this.transform.eulerAngles.z);
		rew = (prev_err_dist-err_dist)/100
		 +-(Abs(prev_roll-cur_roll)/10)-(Abs(prev_pitch-cur_pitch)/10);
		SetReward((float)rew);
		if(err_dist<50)
		{
			SetReward(10);
			Done();
		}
		if(Abs(cur_roll) > 45 || Abs(cur_pitch) > 45 || this.transform.position.y <70)
		{
			SetReward(-10);
			// Debug.Log("This condition is fulfilled");
			Done();
		}
		prev_err_dist = err_dist;
	}
}