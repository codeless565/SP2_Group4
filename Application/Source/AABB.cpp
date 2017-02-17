#include "AABB.h"

void AABB::setminPosition()
{
	min = Translatevec - Scalevec;
}

void AABB::setmaxPosition()
{
	max = Translatevec + Scalevec;
}

Vector3 AABB::getmin()
{
	return min;
}

Vector3 AABB::getmax()
{
	return max;
}