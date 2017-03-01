#include "SHIPDTP.h"
#include "GL\glew.h"
#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"


void SHIPDTP::InitProjectile()
{
	meshList[GEO_CUBE] = MeshBuilder::GenerateSphere("cube", { 0, 0.8f, 0.9f },18,18,5);

	firespeed = 0;
	fleetfire = 0;
}

void SHIPDTP::UpdateProjectile()
{
	//==================== Playership projectile ==================================
	{
		firespeed++;

		if ((Application::IsKeyPressed(VK_SPACE)) && firespeed >= 15&& playership.shootable())
		{
			playership.Shooting();
			Projectile* temp = new Projectile(camera.view, { camera.position.x, camera.position.y-70, camera.position.z+150 }, 1, 50, 10000);
			laservector.push_back(temp);
			firespeed = 0;
		}
		else
		{
			if (firespeed > 15 || !playership.shootable())
			playership.weapon_idling();
		}
		for (auto &i : laservector)
		{
			i->ProjectileTrajectory();
		}
		if (laservector.size() != 0)
		{
			for (int i = 0; i < laservector.size(); i++)
			{

				if (laservector[i]->CheckDistance())
				{
					laservector.erase(laservector.begin() + i);
				}
			}
		}
	}

	//==================== Battleship projectile ==================================
	{
		fleetfire++;

		if (tooclose && fleetfire >= 75)
		{
			Vector3 target = (camera.position - battleship).Normalized();
			Projectile* enemytemp = new Projectile(target, { battleship.x, battleship.y, battleship.z}, 1, 100, 10000); // (!) initialise as player position the 2nd parameter 

			enemylaser.push_back(enemytemp);
			fleetfire = 0;
		}
		for (auto &i : enemylaser)
		{
			i->ProjectileTrajectory();
		}
		if (enemylaser.size() != 0)
		{
			for (int i = 0; i < enemylaser.size(); i++)
			{

				if (enemylaser[i]->CheckDistance())
				{
					enemylaser.erase(enemylaser.begin() + i);
				}
			}
		}

	}



	

}

void SHIPDTP::RenderProjectile()
{
	//==================== Playership projectile ==================================

	if (laservector.size() != 0)
	{
		for (int i = 0; i < laservector.size(); i++)
		{
			modelStack.PushMatrix();
			modelStack.Translate(laservector[i]->getProjectilePosition().x, laservector[i]->getProjectilePosition().y, laservector[i]->getProjectilePosition().z);


			modelStack.Scale(10, 2, 10);
			RenderMesh(meshList[GEO_CUBE], false);
			modelStack.PopMatrix();
		}
	}
	//==================== Battleship projectile ==================================


	if (enemylaser.size() != 0)
	{
		for (int i = 0; i < enemylaser.size(); i++)
		{
			modelStack.PushMatrix();
			modelStack.Translate(enemylaser[i]->getProjectilePosition().x, enemylaser[i]->getProjectilePosition().y, enemylaser[i]->getProjectilePosition().z);


			modelStack.Scale(10, 10, 10);
			RenderMesh(meshList[GEO_CUBE], false);
			modelStack.PopMatrix();
		}
	}
}

void SHIPDTP::ProjectileCollision()
{
	//==================== Playership projectile hits enemy ==================================

	if ((laservector.size() != 0) && (enemyships.size() != 0))
	{
		for (int i = 0; i < laservector.size(); i++)
		{
			for (int j = 0; j < enemyships.size(); j++)
			{
				Vector3 laserposition = laservector[i]->getProjectilePosition(); // (!) VECTOR SUBSCRIPT OUT OF RANGE. TO TEST, SPAM SPACE WHEN ENEMY SPAWNNING
				Vector3 distance = laserposition - enemyships[j];

				if (distance.Length() < 150)
				{
					enemyships.erase(enemyships.begin() + j);
					laservector.erase(laservector.begin() + i);
					amt--;

				}
			}
		}
	}


	// for (auto &i: laservector)
	// {
	// for (auto &j: enemyships)
	// {
	// 

	//==================== Wave 5, Playership projectile hits Battleship ==================================

	if (laservector.size() != 0)
	{
		for (int i = 0; i < laservector.size(); i++)
		{
			Vector3 laserposition= laservector[i]->getProjectilePosition();

			Vector3 distance = laserposition - battleship;


			if (distance.Length() <= 1000)
			{
				laservector.erase(laservector.begin() + i);
				fleethp -= 1;
			}
		}
	}
	//==================== Battleship projectile hit Player ==================================

	if (enemylaser.size() != 0)
	{
		for (int i = 0; i < enemylaser.size(); i++)
		{
			Vector3 laserposition = enemylaser[i]->getProjectilePosition();
			Vector3 distance = laserposition - camera.position;

			if (distance.Length() < 1000)
			{
				enemylaser.erase(enemylaser.begin() + i);
				playership.damaged(10);
				bouncechecktimer = 0;
			}
		}
	}

}