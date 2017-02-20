#include "Player.h"

Player::Player()
{
	Player({ 0, 0, 0 }, 0, 0, 0, 0, 0);
};
Player::Player(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	Position = pos;
	energy = ey;
	fuel = oil;
	speed = sp;
}
Player::~Player()
{
}
Vector3 Player::getPos()
{
	return Position;
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