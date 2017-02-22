#ifndef PLAYER_H
#define PLAYER_H

#include "Vector3.h"

class Player
{
private:
	
	
public:	
	Vector3 position; //Position
	int health; // HP hitPoints
	int damage; // DMG dealt
	float energy; // 
	float fuel;   // fuel
	float speed;	

	Player();
	Player(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	~Player();

	void InitPlayer(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	void ship_idling();
	void ship_boosting();
	bool boostable();
	bool isDead();

	//Getter
	Vector3 getPos();
	int getHealth();
	int getDamage();
	int getEnergy();
	int getFuel();
	int getSpeed();
	//Setter
	void setPos(Vector3);
	void setHealth(int hp);
	void setDamage(int dmg);
	void setEnergy(int ey);
	void setFuel(int oil);
	void setSpeed(int sp);

};

#endif