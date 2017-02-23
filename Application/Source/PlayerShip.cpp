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
}
void PlayerShip::ship_idling()
{
	if (fuel < 100)
	{
		fuel += 0.5f;
	}
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


bool PlayerShip::isDead()
{
	if (health <= 0)
		return true;
	else
		return false;
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
//Setters
void PlayerShip::setPos(Vector3 pos)
{
	position = pos;
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