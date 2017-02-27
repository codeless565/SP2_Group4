#ifndef PLAYERSHIPCAM_H
#define PLAYERSHIPCAM_H

#include "Camera.h"

class PShipCamera : public Camera
{
public:
	Vector3 defaultPosition;
	Vector3 defaultTarget;
	Vector3 defaultUp;

	Vector3 checkPos;
	Vector3 view;
	Vector3 right;

	float yaw;
	float pitch;	
	float accel;	//Ship Acceleration
	float currSpeed;//Ship current speed
	float maxSpeed; //maximum speed the ship can accelerate to
	bool boost;		//boost enabled?

	PShipCamera();
	~PShipCamera();
	virtual void Init(const Vector3& pos, const Vector3& target, const Vector3& up);
	virtual void Update(double dt , bool boost, bool warp);
	virtual void Reset();


	bool obstruction(Vector3 min, Vector3 max);


};

#endif