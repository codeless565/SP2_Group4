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
	bool Rev;				//asteroids curr direction

public:
	Asteroid();
	Asteroid(Vector3 Pos, Vector3 Curr, Vector3 Rotation, int Speed, int max_dist, bool rev);
	~Asteroid();

	void RNGEverything();	//randomly generate all the asteroid's pos, rotation, speed
	void RNG_Pos();			//generate a random position
	void RNG_Rotation();	//generate a rotation
	void RNG_Speed();		//generate a speed
	void CheckPlayerCollision(Vector3 Player);	//Checks Collsion against player
	void CheckEnemyCollision(Vector3 Enemy);	//Checks Collsion against enemy

	//Getter
	Vector3 getPos();
	Vector3 getCurr();
	Vector3 getRotation();
	int getSpeed();
	bool getRev();
};

#endif