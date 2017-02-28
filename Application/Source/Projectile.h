#ifndef PROJECTILE_H
#define PROJECTILE_H

#include "Vector3.h"

class Projectile
{
private:
	Vector3 ProjectileView;
	Vector3 ProjectilePosition;
	Vector3 defaultPosition;
	int Damage;
	double BulletSpeed;
	int Range;


public:
	Projectile();
	Projectile(Vector3 target, Vector3 Position, int dmg, double speed, float distance);
	~Projectile();



	Vector3 getProjectileView();
	Vector3 getProjectilePosition();
	Vector3 getDefaultPosition();
	int getDamage();
	double getBulletSpd();
	int getRange();


	bool CheckDistance();
	void ProjectileTrajectory();
};







#endif
