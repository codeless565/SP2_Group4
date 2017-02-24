#include "Asteroid.h"

void Asteroid::InitField(unsigned amt)	//Initialize the Asteroid values
{
	this->amt = amt;
	RNG_Pos();
	RNG_Rotation();
	RNG_Speed();
	Rev = false;
	max_dist = 90;
}
void Asteroid::RNG_Pos()		//generate asteroids
{
	srand(time(NULL));	
	float x, y, z;

	x = (rand() % 34 + 1) * -100;	//x ranged from 1 to 20
	y = (rand() % 8 + 1) * 100;		//y ranged from 1 to 4
	z = (rand() % 18 + 1) * -150;	//z ranged from 1 to 8

	Curr = { x, y, z };
	Pos = { x, y, z };	//set the position into a vector3 which will be then pushed into vector array
}
void Asteroid::RNG_Rotation()
{
	srand(time(NULL));	
	float x, y, z;
	
	x = rand() % 360;
	y = rand() % 360;
	z = rand() % 360;

	Rotation = { x, y, z };
}
void Asteroid::RNG_Speed()
{
	srand(time(NULL));
	int speed = rand() % 10 + 1;

	Speed = speed;
}

void Asteroid::CheckCollision()		//Checks Collsion with Asteroid
{
}

//Getter
void Asteroid::getPos()
{}
void Asteroid::getCurr()
{}
void Asteroid::getRotation()
{}
void Asteroid::getSpeed()
{}
void Asteroid::getRev()
{}
void Asteroid::getAmount()
{}