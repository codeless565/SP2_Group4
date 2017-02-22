#include "Player.h"

Player::Player()
{
	Player({ 0, 0, 0 }, 100, 5, 100, 100, 0);
};
Player::Player(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	position = pos;
	energy = ey;
	fuel = oil;
	speed = sp;
}
Player::~Player()
{
}

void Player::InitPlayer(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	position = pos;
	energy = ey;
	fuel = oil;
	speed = sp;
}
void Player::ship_idling()
{
	if (fuel < 100)
	{
		fuel += 0.5f;
	}
}
void Player::ship_boosting()
{
	if (fuel != (fuel <= 0))
		fuel--;
}
bool Player::boostable()
{
	if (fuel <= 0)
		return false;
	else
		return true;
}


bool Player::isDead()
{
	if (health <= 0)
		return true;
	else
		return false;
}

Vector3 Player::getPos()
{
	return position;
}
int Player::getHealth()
{
	return health;
}
int Player::getDamage()
{
	return damage;
}
int Player::getEnergy()
{
	return energy;
}
int Player::getFuel()
{
	return fuel;
}
int Player::getSpeed()
{
	return speed;
}
void Player::setPos(Vector3 pos)
{
	position = pos;
}
void Player::setHealth(int hp)
{
	health = hp;
}
void Player::setDamage(int dmg)
{
	damage = dmg;
}
void Player::setEnergy(int ey)
{
	energy = ey;
}
void Player::setFuel(int oil)
{
	fuel = oil;
}
void Player::setSpeed(int sp)
{
	speed = sp;
}