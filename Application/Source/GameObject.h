#ifndef GAMEOBJECT_H
#define GAMEOBJECT_H

#include "Vector3.h"

class GameObject
{
private:
	Vector3 Position;
	int health; // HP hitPoints
	int damage; // DMG dealt
	int energy; // 
	int fuel;   // fuel
	int speed;
	
public:
	GameObject();
	GameObject(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	~GameObject();

	Vector3 getpos();
	int gethealth();
	int getdamage();
	int getenergy();
	int getfuel();
	int getspeed();
};

#endif