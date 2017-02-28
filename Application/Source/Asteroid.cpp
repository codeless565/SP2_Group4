#include "Asteroid.h"

Asteroid::Asteroid()
{
	Asteroid({ 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 0 }, 0, 0, false);
}
Asteroid::Asteroid(Vector3 Pos, Vector3 Curr, Vector3 Rotation, int Speed, int max_dist, bool rev)
{
	this->Pos = Pos;
	this->Curr = Curr;
	this->Rotation = Rotation;
	this->Speed = Speed;
	this->max_dist = max_dist;
	Rev = rev;
}
Asteroid::~Asteroid()
{

}
void Asteroid::RNGEverything()	//Initialize the Asteroid values
{
	RNG_Pos();
	RNG_Rotation();
	RNG_Speed();
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
void Asteroid::CheckPlayerCollision(Vector3 Player)		//Checks Collsion with Asteroid
{
	
}
//Getter
Vector3 Asteroid::getPos()
{
	return Pos;
}
Vector3 Asteroid::getCurr()
{
	return Curr;
}
Vector3 Asteroid::getRotation()
{
	return Rotation;
}
int Asteroid::getSpeed()
{
	return Speed;
}
bool Asteroid::getRev()
{
	return Rev;
}