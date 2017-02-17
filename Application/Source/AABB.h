#ifndef AABB_H
#define AABB_H

#include "Vector3.h"

class AABB
{
private:
	Vector3 min;
	Vector3 max;
	Vector3 Translatevec;
	Vector3 Scalevec;
public:
	AABB()
	{
		min = { 0, 0, 0 };
		max = { 0, 0, 0 };
	}
	AABB(Vector3 translate, Vector3 scale)
	{
		Translatevec = translate;
		Scalevec.x = scale.x / 2;
		Scalevec.y = scale.y / 2;
		Scalevec.z = scale.z / 2;
		setminPosition();
		setmaxPosition();
	}
	~AABB();
	void setminPosition();
	void setmaxPosition();
	Vector3 getmin();
	Vector3 getmax();

};


















#endif