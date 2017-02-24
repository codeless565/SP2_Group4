#ifndef PLAYERSHIP_H
#define PLAYERSHIP_H

#include "Vector3.h"

class PlayerShip
{
private:
	int health;			// HP hitPoints
	bool dead;
	bool fuel_depleted; 
	float speed;		
	
	Vector3 maxAOZone;
	Vector3 minAOZone;

public:	
	Vector3 position;	// Position
	int damage;			// DMG dealt
	float energy;		// Ammo
	float fuel;			// Fuel

	PlayerShip();
	PlayerShip(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	~PlayerShip();

	void InitPlayerShip(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	void InitAOZone(Vector3 min, Vector3 max);
	void ship_idling();
	void ship_boosting();
	void fuel_depletion();
	bool boostable();
	void damaged(int dmg);
	bool isZoneOut(float zt);
	bool isDead();

	//Getter
	Vector3 getPos();
	int getHealth();
	int getDamage();
	int getEnergy();
	int getFuel();
	int getSpeed();
	int zoneOutTime();
	//Setter
	void setPos(Vector3);
	void setHealth(int hp);
	void setDamage(int dmg);
	void setEnergy(int ey);
	void setFuel(int oil);
	void setSpeed(int sp);

};

#endif