#include "ShipRace.h"

#include "GL\glew.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"


#include <iostream>
using std::cout;
using std::endl;

//Initialise the asteroids
void ShipRace::InitAsteroidField()
{
	meshList[ASTEROID1] = MeshBuilder::GenerateOBJ("Asteroid1", "OBJ//Asteroid1.obj");
	meshList[ASTEROID1]->textureID = LoadTGA("Image//Asteroid_red.tga");
	meshList[ASTEROID1]->material.kAmbient.Set(0.6f, 0.6f, 0.6f);
	meshList[ASTEROID1]->material.kDiffuse.Set(0.5f, 0.5f, 0.5f);
	meshList[ASTEROID1]->material.kSpecular.Set(0.2f, 0.2f, 0.2f);
	meshList[ASTEROID1]->material.kShininess = 1.f;

	meshList[ASTEROID2] = MeshBuilder::GenerateOBJ("Asteroid2", "OBJ//Asteroid2.obj");
	meshList[ASTEROID2]->textureID = LoadTGA("Image//Asteroid_red.tga");
	meshList[ASTEROID2]->material.kAmbient.Set(0.6f, 0.6f, 0.6f);
	meshList[ASTEROID2]->material.kDiffuse.Set(0.5f, 0.5f, 0.5f);
	meshList[ASTEROID2]->material.kSpecular.Set(0.2f, 0.2f, 0.2f);
	meshList[ASTEROID2]->material.kShininess = 1.f;
	
	asteroids_amt = 5000; //keep below 400
	max_dist = 100;
	hit = false;
	bouncechecktimer = 100;
	RNGAsteroidPos();
}
//Updates the position of the astroids - OK!
void ShipRace::UpdateAsteroidField(double dt)
{
	//move +X - OK
	for (int i = 0; i < asteroids_Pos.size() * 1 / 6; i++)
	{
		if (asteroids_Curr[i].x >= asteroids_Pos[i].x + max_dist)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].x <= asteroids_Pos[i].x)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].x += (float)(asteroids_Speed[i] * dt);
		else
			asteroids_Curr[i].x -= (float)(asteroids_Speed[i] * dt);
	}
	//move -X -OK
	for (int i = asteroids_Pos.size() * 1 / 6; i < asteroids_Pos.size() * 2 / 6; i++)
	{
		if (asteroids_Curr[i].x <= asteroids_Pos[i].x - max_dist)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].x >= asteroids_Pos[i].x)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].x -= (float)(asteroids_Speed[i] * dt);
		else
			asteroids_Curr[i].x += (float)(asteroids_Speed[i] * dt);
	}
	//move +Y
	for (int i = asteroids_Pos.size() * 2 / 6; i < asteroids_Pos.size() * 3 / 6; i++)
	{
		if (asteroids_Curr[i].y >= asteroids_Pos[i].y + max_dist)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].y <= asteroids_Pos[i].y)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].y += (float)(asteroids_Speed[i] * dt);
		else
			asteroids_Curr[i].y -= (float)(asteroids_Speed[i] * dt);
	}
	//move -Y
	for (int i = asteroids_Pos.size() * 3 / 6; i < asteroids_Pos.size() * 4 / 6; i++)
	{
		if (asteroids_Curr[i].y <= asteroids_Pos[i].y - max_dist)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].y >= asteroids_Pos[i].y)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].y -= (float)(asteroids_Speed[i] * dt);
		else
			asteroids_Curr[i].y += (float)(asteroids_Speed[i] * dt);
	}
	//move +Z
	for (int i = asteroids_Pos.size() * 4 / 6; i < asteroids_Pos.size() * 5 / 6; i++)
	{
		if (asteroids_Curr[i].z >= asteroids_Pos[i].z + max_dist)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].z <= asteroids_Pos[i].z)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].z += (float)(asteroids_Speed[i] * dt);
		else
			asteroids_Curr[i].z -= (float)(asteroids_Speed[i] * dt);
	}
	//move -Z
	for (int i = asteroids_Pos.size() * 5 / 6; i < asteroids_Pos.size(); i++)
	{
		if (asteroids_Curr[i].z <= asteroids_Pos[i].z - max_dist)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].z >= asteroids_Pos[i].z)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].z -= (float)(asteroids_Speed[i] * dt);
		else
			asteroids_Curr[i].z += (float)(asteroids_Speed[i] * dt);
	}
}
//Renders all the asteroids
void ShipRace::RenderAsteroidField()
{
	for (int i = 0; i < asteroids_Curr.size() / 2; i++)
	{
		int x, y, z, Rx, Ry, Rz;

		x = asteroids_Curr[i].x;
		y = asteroids_Curr[i].y;
		z = asteroids_Curr[i].z;

		Rx = asteroids_Rotation[i].x;
		Ry = asteroids_Rotation[i].y;
		Rz = asteroids_Rotation[i].z;

		Vector3 distance = asteroids_Curr[i] - playership.position;
		
		if (distance.Length() <= 4000)
		{
			modelStack.PushMatrix();
			modelStack.Translate(x, y, z);
			modelStack.Rotate(Rx, 1, 0, 0);
			modelStack.Rotate(Ry, 0, 1, 0);
			modelStack.Rotate(Rz, 0, 0, 1);
			modelStack.Scale(12, 12, 12);
			RenderMesh(meshList[ASTEROID2], true);
			modelStack.PopMatrix();
		}
	}

	for (int i = asteroids_Curr.size() / 2; i < asteroids_Curr.size(); i++)
	{
		int x, y, z, Rx, Ry, Rz;

		x = asteroids_Curr[i].x;
		y = asteroids_Curr[i].y;
		z = asteroids_Curr[i].z;

		Rx = asteroids_Rotation[i].x;
		Ry = asteroids_Rotation[i].y;
		Rz = asteroids_Rotation[i].z;

		Vector3 distance = asteroids_Curr[i] - playership.position;

		if (distance.Length() <= 4000)
		{
			modelStack.PushMatrix();
			modelStack.Translate(x, y, z);
			modelStack.Rotate(Rx, 1, 0, 0);
			modelStack.Rotate(Ry, 0, 1, 0);
			modelStack.Rotate(Rz, 0, 0, 1);
			modelStack.Scale(25, 25, 25);
			RenderMesh(meshList[ASTEROID1], true);
			modelStack.PopMatrix();
		}
	}
}
//Set all the params of the asteroids
void ShipRace::RNGAsteroidPos()
{
	int x, y, z;	//Position/Rotation of the asteroids

	srand(time(NULL));		//randomize the generation seed everytime
	//translation
	for (int i = 0; i < asteroids_amt/11; i++)
	{
		x = (rand() % 40 + 1) * -200;	//x ranged from 1 to 20
		
		if (i % 2 == 0)
			y = (rand() % 8) * 140;		//y ranged from 1 to 4
		else
			y = (rand() % 8) * -140;	//y ranged from -1 to -4

		z = (rand() % 20 + 1) * -130;		//z ranged from 1 to 8
		cout << x << ' ' << y << ' ' << z << endl;

		asteroids_Curr.push_back(Vector3(x, y, z));
		asteroids_Pos.push_back(Vector3(x, y, z)); //set the position into a vector3 which will be then pushed into vector array
	}
	for (int i = asteroids_amt/11; i < asteroids_amt; i++)
	{
		x = (rand() % 260 + 1) * 240;	//x ranged from 1 to 20

		if (i % 2 == 0)
			y = (rand() % 8 + 1) * 140;		//y ranged from 1 to 4
		else
			y = (rand() % 8 + 1) * -140;	//y ranged from -1 to -4

		z = (rand() % 20 + 1) * -130;		//z ranged from 1 to 8
		cout << x << ' ' << y << ' ' << z << endl;

		asteroids_Curr.push_back(Vector3(x, y, z));
		asteroids_Pos.push_back(Vector3(x, y, z)); //set the position into a vector3 which will be then pushed into vector array
	}
	//rotation
	for (int i = 0; i < asteroids_amt; i++)
	{
		//rotation ranged from 0 to 360
		x = rand() % 360;	

		y = rand() % 360;

		z = rand() % 360;
		cout << x << ' ' << y << ' ' << z << endl;
		asteroids_Rotation.push_back(Vector3(x , y, z)); //set the rotation into a vector3 which will be then pushed into vector array
	}
	//speed
	for (int i = 0; i < asteroids_amt; i++)
	{
		//speed of asteroid ranging from 1 to 10
		x = (rand() % 10 + 1) * 8;

		cout << x << ' ' << y << ' ' << z << endl;
		asteroids_Speed.push_back(x); //set the speed into a vector array
	}
	//rev
	for (int i = 0; i < asteroids_amt; i++)
	{
		int rev = 0;
		asteroid_Rev.push_back(rev); //set the speed into a vector array
	}
}

void ShipRace::CheckAsteroidCollision()
{
	int x = playership.position.x;
	int y = playership.position.y;
	int z = playership.position.z;
	
	Vector3 plane_y(0, y, 0);
	Vector3 plane_xz(x, 0, z);

	for (int i = 0; i < asteroids_Curr.size(); i++)
	{
		Vector3 asteroid_xz(asteroids_Curr[i].x, 0, asteroids_Curr[i].z);
		Vector3 asteroid_y(0, asteroids_Curr[i].y, 0);

		Vector3 distance_xz = asteroid_xz - plane_xz;
		Vector3 distance_y = asteroid_y - plane_y;

		if (distance_xz.Length() < 70 && distance_y.Length() < 50)
		{
			asteroids_Pos.erase(asteroids_Pos.begin() + i);
			asteroids_Curr.erase(asteroids_Curr.begin() + i);
			asteroids_Rotation.erase(asteroids_Rotation.begin() + i);
			asteroids_Speed.erase(asteroids_Speed.begin() + i);
			asteroid_Rev.erase(asteroid_Rev.begin() + i);
			hit = true;
			bouncechecktimer = 0;
		}
	}

	if (hit)
	{
		playership.damaged(10);
		camera.currSpeed /= 1.5;
		hit = false;
	}

	bouncechecktimer++;
}

void ShipRace::CheckEnemyCollision()
{
	for (int i = 0; i < asteroids_Curr.size(); i++)
	{
		for (int j = 0; j < enemyship.size(); j++)
		{
			Vector3 enemy_xz(enemyship[j].position.x, 0, enemyship[j].position.z);
			Vector3 enemy_y(0, enemyship[j].position.y, 0);

			Vector3 asteroid_xz(asteroids_Curr[i].x, 0, asteroids_Curr[i].z);
			Vector3 asteroid_y(0, asteroids_Curr[i].y, 0);

			Vector3 distance_xz = asteroid_xz - enemy_xz;
			Vector3 distance_y = asteroid_y - enemy_y;

			if (distance_xz.Length() < 70 && distance_y.Length() < 40)
			{
				asteroids_Pos.erase(asteroids_Pos.begin() + i);
				asteroids_Curr.erase(asteroids_Curr.begin() + i);
				asteroids_Rotation.erase(asteroids_Rotation.begin() + i);
				asteroids_Speed.erase(asteroids_Speed.begin() + i);
				asteroid_Rev.erase(asteroid_Rev.begin() + i);

				enemyship[j].damaged(10);
				enemyship[j].slowed();
			}
		}
	}
}