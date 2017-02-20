#ifndef PLAYER_H
#define PLAYER_H

#include "Vector3.h"

class Player
{
private:
	Vector3 Position; //Position
	int health; // HP hitPoints
	int damage; // DMG dealt
	int energy; // 
	int fuel;   // fuel
	int speed;	
	
public:
	Player();
	Player(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	~Player();
	
	Vector3 getPos();
	int getHealth();
	int getDamage();
	int getEnergy();
	int getFuel();
	int getSpeed();
};

#endif