#ifndef ASTEROID_H
#define ASTEROID_H

#include "Vector3.h"
#include <vector>

using std::vector;

class Asteroid
{
private:
	//Asteroids
	Vector3 Pos;			//asteroids position
	Vector3 Curr;			//asteroids current position
	Vector3 Rotation;		//asteroids rotation
	int Speed;				//asteroids speed
	int max_dist;			//maximum distance the object can travel
	unsigned int amt;		//number of asteroids
	bool Rev;				//asteroids curr direction
	int bouncechecktimer;

public:
	void InitField(unsigned amt);	//Initialize the Asteroid values
	void RNG_Pos();					//generate a random position
	void RNG_Rotation();
	void RNG_Speed();
	void CheckCollision();			//Checks Collsion with Asteroid

	//Getter
	void getPos();
	void getCurr();
	void getRotation();
	void getSpeed();
	void getRev();
	void getAmount();
};

#endif