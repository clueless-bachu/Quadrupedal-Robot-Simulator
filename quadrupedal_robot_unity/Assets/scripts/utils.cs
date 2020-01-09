using System.Collections;
using static System.Math;
using System.Collections.Generic;
using UnityEngine;

public class utils : MonoBehaviour
{
    public static double angleConverter(double angle){
    	if(angle>180 && angle <=360 ){
    		return angle-360.0;
    	}
    	else return angle;
    }

    public static Vector3 angleConverterV3(Vector3 angle){
        for(int i=0; i <3;i++) if(angle[i]>180f && angle[i]<=360f )  angle[i] =angle[i]-360.0f;
        return angle;
    }

    public static Vector3 degreeToRadian(Vector3 A){
    	return A*(float)(PI/180);
    }

    public static double[,] rotationMatrix(Vector3 ang){
    	float roll = ang[0];
    	float pitch= ang[2];
    	float yaw  = ang[1];


    	double[,] rotationRoll = new double[,] {{1,0,0},{0,Cos(roll),Sin(roll)},{0,-Sin(roll),Cos(roll)}};
    	double[,] rotationPitch= new double[,] {{Cos(pitch),Sin(pitch),0},{-Sin(pitch),Cos(pitch),0},{0,0,1}};
    	double[,] rotationYaw  = new double[,] {{Cos(yaw),0,-Sin(yaw)},{0,1,0},{-Sin(yaw),0,Cos(yaw)}};


    	double[,] rotationMatrix = matrixMul(matrixMul(rotationRoll,rotationPitch),rotationYaw);
    return rotationMatrix;
    }

    public static Vector3 Vector3xMatrix(double[,] A, Vector3 a){
    	Vector3 newa = new Vector3(0,0,0);
    	// print(a);
    	for(int i = 0;i <3;i++) 
    			{
    				newa[i] = (float)(a[0]*A[i,0]+a[1]*A[i,1]+a[2]*A[i,2]);
    				// print(newa[i]);
    			}	
    	return newa;
    }

    public static double[,] matrixMul(double[,] A, double[,] B ){
        /*
        This function multiplies 2 3x3 matrices

        Input:
        A: first 3x3 Matrix
        B: second 3x3 Matrix


        return:
        product of A and B

        */

    	int a = A.GetLength(0);
    	int trv = A.GetLength(1);
    	int b = B.GetLength(1);
    	double[,] prod = new double[a,b];
    	for(int i=0;i <a; i++)
    		for(int j=0;j <b; j++)
    			for(int k =0;k <trv;k++)
    				prod[i,j]+=A[i,k]*B[k,j];
    	return prod;
    }	

    public static void printMatrix(double[,] A){
    	print("Start of matrix");
    	for(int i=0;i <A.GetLength(0);i++) for(int j=0;j < A.GetLength(1); j++) print(A[i,j]);
    	print("End of Matrix");
    }

    public static float GenerateNormalRandom(float mean, float sigma){
        Random rand = new Random(); //reuse this if you are generating many
        double u1 = 1.0-Random.value; //uniform(0,1] random doubles
        double u2 = 1.0-Random.value;
        double randStdNormal = Sqrt(-2.0 * Log(u1)) *Sin(2.0 * PI * u2); //random normal(0,1)
        float randNormal = mean + sigma * (float)randStdNormal; //random normal(mean,stdDev^2)
        return randNormal;
     }
}
