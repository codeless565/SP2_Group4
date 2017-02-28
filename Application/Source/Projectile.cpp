#include "Projectile.h"

Projectile::Projectile()
{
	ProjectileView = { 0, 0, 0 };
	ProjectilePosition = defaultPosition = { 0, 0, 0 };
	Damage = 0;
	BulletSpeed = 0;
	Range = 0;
}
Projectile::Projectile(Vector3 target, Vector3 Position, int dmg, double speed, float distance)
{
	ProjectileView = target;
	// initialise as player position
	ProjectilePosition = defaultPosition = Position;
	Damage = dmg;
	BulletSpeed = speed;
	Range = distance;
}
Projectile::~Projectile()
{

}

Vector3 Projectile::getProjectileView()
{
	return ProjectileView;
}
Vector3 Projectile::getProjectilePosition()
{
	return ProjectilePosition;
}
Vector3 Projectile::getDefaultPosition()
{
	return defaultPosition;
}
int Projectile::getDamage()
{
	return Damage;
}
double Projectile::getBulletSpd()
{
	return BulletSpeed;
}
int Projectile::getRange()
{
	return Range;
}

bool Projectile::CheckDistance()
{
	Vector3 distance = ProjectilePosition - defaultPosition;

	if (distance.Length() >= Range)
	{
		return true;
	}
	else
		return false;
}


void Projectile::ProjectileTrajectory()
{
	ProjectilePosition += ProjectileView * BulletSpeed;

	//std::cout << ProjectilePosition << std::endl;
}