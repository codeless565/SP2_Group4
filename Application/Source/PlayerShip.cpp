#include "PlayerShip.h"

PlayerShip::PlayerShip()
{
	PlayerShip({ 0, 0, 0 }, 100, 5, 100, 100, 0);
};
PlayerShip::PlayerShip(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	position = pos;
	energy = ey;
	fuel = oil;
	speed = sp;

	dead = false;
	fuel_depleted = false;

	maxAOZone = { 0, 0, 0 };
	minAOZone = { 0, 0, 0 };
}
PlayerShip::~PlayerShip()
{
}
void PlayerShip::InitPlayerShip(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	position = pos;
	energy = ey;
	fuel = oil;
	speed = sp;

	dead = false;
	fuel_depleted = false;

	maxAOZone = { 0, 0, 0 };
	minAOZone = { 0, 0, 0 };
}
void PlayerShip::InitAOZone(Vector3 min, Vector3 max)
{
	minAOZone = min;
	maxAOZone = max;
}
void PlayerShip::ship_idling()
{
	if (fuel_depleted)
		fuel += 1.f;
	else if (fuel < 100)
		fuel += 0.5f;

	if (fuel >= 100)
		fuel = 100;
}
void PlayerShip::ship_boosting()
{
	if (fuel != (fuel <= 0))
		fuel--;
}
void PlayerShip::fuel_depletion()
{
	if (fuel <= 0)
		fuel_depleted = true;

	if (fuel_depleted && fuel >= 100)
		fuel_depleted = false;
}
bool PlayerShip::boostable()
{
	fuel_depletion();

	if (fuel_depleted)
		return false;
	else
		return true;
}
void PlayerShip::damaged(int dmg)
{
	health -= dmg;
}
bool PlayerShip::isZoneOut(float zt)
{
	//if (zt <= 0)
	//	dead = true;

	if (position.x < minAOZone.x || position.y < minAOZone.y || position.z < minAOZone.z || position.x > maxAOZone.x || position.y > maxAOZone.y || position.z > maxAOZone.z)
		return true;
	else
		return false;
}
bool PlayerShip::isDead()
{
	if (health <= 0)
		dead = true;

	return dead;
}
//Getters
Vector3 PlayerShip::getPos()
{
	return position;
}
int PlayerShip::getHealth()
{
	return health;
}
int PlayerShip::getDamage()
{
	return damage;
}
int PlayerShip::getEnergy()
{
	return energy;
}
int PlayerShip::getFuel()
{
	return fuel;
}
int PlayerShip::getSpeed()
{
	return speed;
}
int PlayerShip::zoneOutTime()
{
	int secs = 10;

	return secs;
}
//Setters
void PlayerShip::setPos(Vector3 pos)
{
	position.x = pos.x;
	position.y = pos.y - 7;
	position.z = pos.z + 13;
}
void PlayerShip::setHealth(int hp)
{
	health = hp;
}
void PlayerShip::setDamage(int dmg)
{
	damage = dmg;
}
void PlayerShip::setEnergy(int ey)
{
	energy = ey;
}
void PlayerShip::setFuel(int oil)
{
	fuel = oil;
}
void PlayerShip::setSpeed(int sp)
{
	speed = sp;
}