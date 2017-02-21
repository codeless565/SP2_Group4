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