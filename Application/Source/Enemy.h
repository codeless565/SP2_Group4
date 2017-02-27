#ifndef ENEMY_H
#define ENEMY_H

#include "Vector3.h"

class Enemy
{
private:
	int health;			// HP hitPoints
	bool dead;
	float maxspeed;		// Maximum speed the ship can go
	float currspeed;	//the current speed the ship is going at
	float accel;

	Vector3 maxAOZone;
	Vector3 minAOZone;

public:
	Vector3 position;	// Position
	int damage;			// DMG dealt
	float energy;		// Ammo
	float fuel;			// Fuel

	Enemy();
	Enemy(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	~Enemy();

	void InitEnemy(Vector3 pos, int hp, int dmg, int ey, int oil, int sp);
	void InitAOZone(Vector3 min, Vector3 max);
	void chasing(float dt);
	void slowed();
	void damaged(int dmg);
	bool isZoneOut(float zt);
	bool isDead();

	//Getter
	Vector3 getPos();
	int getHealth();
	int getDamage();
	int getSpeed();
	int zoneOutTime();
	//Setter
	void setPos(Vector3);
	void setHealth(int hp);
	void setDamage(int dmg);
	void setSpeed(int sp);

};

#endif