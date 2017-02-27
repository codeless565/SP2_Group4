#include "Enemy.h"

#include <iostream>
using std::cout;
using std::endl;

Enemy::Enemy()
{
	Enemy({ 0, 0, 0 }, 100, 5, 100, 100, 0);
};
Enemy::Enemy(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	position = pos;
	energy = ey;
	fuel = oil;
	maxspeed = sp * 100;
	currspeed = 0;
	accel = 10.f;

	dead = false;

	maxAOZone = { 0, 0, 0 };
	minAOZone = { 0, 0, 0 };
}
Enemy::~Enemy()
{
}
void Enemy::InitEnemy(Vector3 pos, int hp, int dmg, int ey, int oil, int sp)
{
	health = hp;
	damage = dmg;
	position = pos;
	energy = ey;
	fuel = oil;
	maxspeed = sp * 100;
	currspeed = 0;
	accel = 10.f;

	dead = false;

	maxAOZone = { 0, 0, 0 };
	minAOZone = { 0, 0, 0 };
}
void Enemy::InitAOZone(Vector3 min, Vector3 max)
{
	minAOZone = min;
	maxAOZone = max;
}
void Enemy::chasing(float dt)
{
	currspeed += accel * 2;

	position.x += (float)(currspeed *dt);

	if (currspeed >= maxspeed)
		currspeed = maxspeed;
}
void Enemy::slowed()
{
	currspeed /= 2;
}
void Enemy::damaged(int dmg)
{
	health -= dmg;

	if (health <= 0)
		health = 0;
}
bool Enemy::isZoneOut(float zt)
{
	if (position.x < minAOZone.x || position.y < minAOZone.y || position.z < minAOZone.z || position.x > maxAOZone.x || position.y > maxAOZone.y || position.z > maxAOZone.z)
		return true;
	else
		return false;
}
bool Enemy::isDead()
{
	if (health <= 0)
	{
		dead = true;
	}
	return dead;
}
//Getters
Vector3 Enemy::getPos()
{
	return position;
}
int Enemy::getHealth()
{
	return health;
}
int Enemy::getDamage()
{
	return damage;
}
int Enemy::getSpeed()
{
	return currspeed;
}
int Enemy::zoneOutTime()
{
	int secs = 10;

	return secs;
}
//Setters
void Enemy::setPos(Vector3 pos)
{
	position.x = pos.x;
	position.y = pos.y - 7;
	position.z = pos.z + 13;
}
void Enemy::setHealth(int hp)
{
	health = hp;
}
void Enemy::setDamage(int dmg)
{
	damage = dmg;
}
void Enemy::setSpeed(int sp)
{
	currspeed = sp;
}