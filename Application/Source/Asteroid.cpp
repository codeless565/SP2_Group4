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
	
	asteroids_amt = 400; //keep below 400
	hit = false;
	bouncechecktimer = 0;
	RNGAsteroidPos();
}

void SP2::RenderAsteroidField()
{
	for (int i = 0; i < asteroids_Pos.size() / 2; i++)
	{
		int x, y, z, Rx, Ry, Rz;

		x = asteroids_Pos[i].x;
		y = asteroids_Pos[i].y;
		z = asteroids_Pos[i].z;

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

	for (int i = asteroids_Pos.size() / 2; i < asteroids_Pos.size(); i++)
	{
		int x, y, z, Rx, Ry, Rz;

		x = asteroids_Pos[i].x;
		y = asteroids_Pos[i].y;
		z = asteroids_Pos[i].z;

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
		RenderTextOnScreen(meshList[GEO_TEXT], "HIT", Color(0, 1, 0), 6, 5, 4);
	}
}

void SP2::RNGAsteroidPos()
{
	int x, y, z;	//Position/Rotation of the asteroids

	srand(time(NULL));		//randomize the generation seed everytime
	//translation
	for (int i = 0; i < asteroids_amt/2; i++)
	{
		x = (rand() % 25 + 1) * -100;	//x ranged from 1 to 20
		
		if (i % 2 == 0)
			y = (rand() % 4 + 1) * 100;		//y ranged from 1 to 4
		else
			y = (rand() % 4 + 1) * -150;	//y ranged from -1 to -4

		z = (rand() % 8 + 1) * -150;		//z ranged from 1 to 8
		cout << x << ' ' << y << ' ' << z << endl;

		asteroids_Pos.push_back(Vector3(x, y, z)); //set the position into a vector3 which will be then pushed into vector array
	}
	for (int i = asteroids_amt/2; i < asteroids_amt; i++)
	{
		x = (rand() % 25 + 1) * 100;	//x ranged from 1 to 20

		if (i % 2 == 0)
			y = (rand() % 4 + 1) * 100;		//y ranged from 1 to 4
		else
			y = (rand() % 4 + 1) * -150;	//y ranged from -1 to -4

		z = (rand() % 8 + 1) * -150;		//z ranged from 1 to 8
		cout << x << ' ' << y << ' ' << z << endl;

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
}

void SP2::CheckAsteroidCollision(int displacementX, int displacementY, int displacementZ)
{
	int x = camera.position.x + displacementX;
	int y = camera.position.y + displacementY;
	int z = camera.position.z + displacementZ;

	Vector3 plane_pos(x, y, z);

	for (int i = 0; i < asteroids_Pos.size(); i++)
	{
		Vector3 distance = asteroids_Pos[i] - plane_pos;

		if (distance.Length() < 40)
		{
			asteroids_Pos.erase(asteroids_Pos.begin() + i);
			hit = true;
			bouncechecktimer = 0;
		}
	}
	if (hit && bouncechecktimer >= 5)
	{
		hit = false;
		bouncechecktimer = 0;
	}

	bouncechecktimer++;
}