#ifndef FIRSTPERSONCAM_H
#define FIRSTPERSONCAM_H

#include "Camera.h"

class FpCamera : public Camera
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
	float Accel;	//Ship Acceleration

	FpCamera();
	~FpCamera();
	virtual void Init(const Vector3& pos, const Vector3& target, const Vector3& up);
	virtual void Update(double dt);
	virtual void Reset();


	bool obstruction(Vector3 min, Vector3 max);

};

#endif