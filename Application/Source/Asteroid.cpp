#include "SP2.h"

#include "GL\glew.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"


#include <iostream>
using std::cout;
using std::endl;


void SP2::InitAsteroidField()
{
	meshList[GEO_TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT]->textureID = LoadTGA("Image//testfont.tga");

	meshList[ASTEROID1] = MeshBuilder::GenerateOBJ("Asteroid1", "OBJ//Asteroid1.obj");
	meshList[ASTEROID1]->textureID = LoadTGA("Image//Asteroid_red.tga");

	meshList[ASTEROID2] = MeshBuilder::GenerateOBJ("Asteroid2", "OBJ//Asteroid2.obj");
	meshList[ASTEROID2]->textureID = LoadTGA("Image//Asteroid_red.tga");
	
	asteroids_amt = 800; //keep below 400
	hit = false;
	bouncechecktimer = 100;
	RNGAsteroidPos();
}
void SP2::UpdateAsteroidField(double dt)
{
	//move +X
	for (int i = 0; i < asteroids_Pos.size() * 1 / 6; i++)
	{
		if (asteroids_Curr[i].x >= asteroids_Pos[i].x + 80)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].x <= asteroids_Pos[i].x)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].x += (float)(asteroids_Speed[i] * 10 * dt);
		else
			asteroids_Curr[i].x -= (float)(asteroids_Speed[i] * 10 * dt);
	}
	//move -X
	for (int i = asteroids_Pos.size() * 1 / 6; i < asteroids_Pos.size() * 2 / 6; i++)
	{
		if (asteroids_Curr[i].x <= asteroids_Pos[i].x - 80)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].x >= asteroids_Pos[i].x)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].x -= (float)(asteroids_Speed[i] * 10 * dt);
		else
			asteroids_Curr[i].x += (float)(asteroids_Speed[i] * 10 * dt);
	}

	//move +Y
	for (int i = asteroids_Pos.size() * 2 / 6; i < asteroids_Pos.size() * 3 / 6; i++)
	{
		if (asteroids_Curr[i].y >= asteroids_Pos[i].y + 80)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].y <= asteroids_Pos[i].y)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].y += (float)(asteroids_Speed[i] * 10 * dt);
		else
			asteroids_Curr[i].y -= (float)(asteroids_Speed[i] * 10 * dt);
	}
	//move -Y
	for (int i = asteroids_Pos.size() * 3 / 6; i < asteroids_Pos.size() * 4 / 6; i++)
	{
		if (asteroids_Curr[i].y <= asteroids_Pos[i].y - 80)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].y >= asteroids_Pos[i].y)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].y -= (float)(asteroids_Speed[i] * 10 * dt);
		else
			asteroids_Curr[i].y += (float)(asteroids_Speed[i] * 10 * dt);
	}
	//move +Z
	for (int i = asteroids_Pos.size() * 4 / 6; i < asteroids_Pos.size() * 5 / 6; i++)
	{
		if (asteroids_Curr[i].z >= asteroids_Pos[i].z + 80)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].z <= asteroids_Pos[i].z)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].z += (float)(asteroids_Speed[i] * 10 * dt);
		else
			asteroids_Curr[i].z -= (float)(asteroids_Speed[i] * 10 * dt);
	}
	//move -Z
	for (int i = asteroids_Pos.size() * 5 / 6; i < asteroids_Pos.size(); i++)
	{
		if (asteroids_Curr[i].z <= asteroids_Pos[i].z - 80)
			asteroid_Rev[i] = 1;
		else if (asteroids_Curr[i].z >= asteroids_Pos[i].z)
			asteroid_Rev[i] = 0;

		if (asteroid_Rev[i] == 0)
			asteroids_Curr[i].z -= (float)(asteroids_Speed[i] * 10 * dt);
		else
			asteroids_Curr[i].z += (float)(asteroids_Speed[i] * 10 * dt);
	}
}
void SP2::RenderAsteroidField()
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

		modelStack.PushMatrix();
		modelStack.Translate(x, y, z);
		modelStack.Rotate(Rx, 1, 0, 0);
		modelStack.Rotate(Ry, 0, 1, 0);
		modelStack.Rotate(Rz, 0, 0, 1);
		modelStack.Scale(8, 8, 8);
		RenderMesh(meshList[ASTEROID2], false);
		modelStack.PopMatrix();
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

		modelStack.PushMatrix();
		modelStack.Translate(x, y, z);
		modelStack.Rotate(Rx, 1, 0, 0);
		modelStack.Rotate(Ry, 0, 1, 0);
		modelStack.Rotate(Rz, 0, 0, 1);
		modelStack.Scale(20, 20, 20);
		RenderMesh(meshList[ASTEROID1], false);
		modelStack.PopMatrix();
	}

	if (hit == true)
	{
		RenderTextOnScreen(meshList[GEO_TEXT2], "HIT", Color(0, 1, 0), 6, 5, 4);
	}
}

void SP2::RNGAsteroidPos()
{
	int x, y, z;	//Position/Rotation of the asteroids

	srand(time(NULL));		//randomize the generation seed everytime
	//translation
	for (int i = 0; i < asteroids_amt/2; i++)
	{
		x = (rand() % 34 + 1) * -100;	//x ranged from 1 to 20
		
		if (i % 2 == 0)
			y = (rand() % 8 + 1) * 100;		//y ranged from 1 to 4
		else
			y = (rand() % 8 + 1) * -150;	//y ranged from -1 to -4

		z = (rand() % 18 + 1) * -150;		//z ranged from 1 to 8
		cout << x << ' ' << y << ' ' << z << endl;

		asteroids_Curr.push_back(Vector3(x, y, z));
		asteroids_Pos.push_back(Vector3(x, y, z)); //set the position into a vector3 which will be then pushed into vector array
	}
	for (int i = asteroids_amt/2; i < asteroids_amt; i++)
	{
		x = (rand() % 34 + 1) * 100;	//x ranged from 1 to 20

		if (i % 2 == 0)
			y = (rand() % 8 + 1) * 100;		//y ranged from 1 to 4
		else
			y = (rand() % 8 + 1) * -150;	//y ranged from -1 to -4

		z = (rand() % 18 + 1) * -150;		//z ranged from 1 to 8
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
		x = rand() % 10 + 1;

		if (i % 2 == 0)
			x *= -1;

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

void SP2::CheckAsteroidCollision()
{
	int x = playership.position.x;
	int y = playership.position.y;
	int z = playership.position.z;

	Vector3 plane_pos(x, y, z);

	for (int i = 0; i < asteroids_Pos.size(); i++)
	{
		Vector3 distance = asteroids_Pos[i] - plane_pos;

		if (distance.Length() < 40)
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
		playership.health -= 10;

		hit = false;
	}

	//if (hit && bouncechecktimer >= 5)
	//{
	//	hit = false;
	//	bouncechecktimer = 0;
	//}

	bouncechecktimer++;
}