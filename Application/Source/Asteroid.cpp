#include "SP2.h"

#include "GL\glew.h"

#include "shader.hpp"
#include "Mtx44.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "Utility.h"
#include "LoadTGA.h"

#include <iostream>
using std::cout;
using std::endl;


void SP2::InitAsteroidField()
{
	meshList[ASTEROID1] = MeshBuilder::GenerateOBJ("Asteroid1", "OBJ//Asteroid1.obj");
	meshList[ASTEROID1]->textureID = LoadTGA("Image//Asteroid_red.tga");

	meshList[ASTEROID2] = MeshBuilder::GenerateOBJ("Asteroid2", "OBJ//Asteroid2.obj");
	meshList[ASTEROID2]->textureID = LoadTGA("Image//Asteroid_red.tga");
	
	asteroids_amt = 400; //keep below 400
	hit = false;
	RNGAsteroidPos();
}

void SP2::RenderAsteroidField()
{
	//modelStack.PushMatrix();
	//modelStack.Translate(-100, 0, 50);
	//modelStack.Scale(10, 10, 10);
	//RenderMesh(meshList[ASTEROID1], false);
	//modelStack.PopMatrix();

	//modelStack.PushMatrix();
	//modelStack.Translate(-200, 0, -50);
	//modelStack.Rotate(60, 0, 0, 1);
	//modelStack.Scale(6, 4, 7);
	//RenderMesh(meshList[ASTEROID2], false);
	//modelStack.PopMatrix();

	//modelStack.PushMatrix();
	//modelStack.Translate(-150, 70, -100);
	//modelStack.Rotate(20, 0, 0, 1);
	//modelStack.Scale(13, 16, 10);
	//RenderMesh(meshList[ASTEROID1], false);
	//modelStack.PopMatrix();

	//modelStack.PushMatrix();
	//modelStack.Translate(-250, 30, 180);
	//modelStack.Rotate(50, 1, 0, 0);
	//modelStack.Scale(6, 5, 7);
	//RenderMesh(meshList[ASTEROID2], false);
	//modelStack.PopMatrix();

	//modelStack.PushMatrix();
	//modelStack.Translate(-100, 0, -125);
	//modelStack.Rotate(120, 0, 1, 0);
	//modelStack.Scale(12, 10, 8);
	//RenderMesh(meshList[ASTEROID1], false);
	//modelStack.PopMatrix();

	//modelStack.PushMatrix();
	//modelStack.Translate(-100, 0, -200);
	//modelStack.Rotate(160, 1, 0, 0);
	//modelStack.Scale(7, 5, 6);
	//RenderMesh(meshList[ASTEROID2], false);
	//modelStack.PopMatrix();
	
	modelStack.PushMatrix();
	modelStack.Translate(-1500, -500, -1800);
	{
		for (unsigned i = 0; i < asteroids_amt / 2; i++)
		{
			unsigned x, y, z, Rx, Ry, Rz;

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

		for (unsigned i = asteroids_amt / 2; i < asteroids_amt; i++)
		{
			unsigned x, y, z, Rx, Ry, Rz;

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
	}
	modelStack.PopMatrix();

	if (hit)
	{
		RenderTextOnScreen(meshList[GEO_TEXT], "HIT", Color(0, 1, 0), 6, 5, 4);
	}

}

void SP2::RNGAsteroidPos()
{
	unsigned x, y, z;	//Position/Rotation of the asteroids

	srand(time(NULL));		//randomize the generation seed everytime

	for (unsigned i = 0; i < asteroids_amt; i++)
	{
		x = (rand() % 25 + 1) * 150;	//x ranged from 1 to 20
		
		y = (rand() % 8 + 1) * 150;		//y ranged from 1 to 8

		z = (rand() % 8 + 1) * 150;		//z ranged from 1 to 8
		cout << x << ' ' << y << ' ' << z << endl;
		asteroids_Pos.push_back(Vector3(x, y, z)); //set the position into a vector3 which will be then pushed into vector array
	}

	for (unsigned i = 0; i < asteroids_amt; i++)
	{
		//rotation ranged from 0 to 360
		x = rand() % 360;	

		y = rand() % 360;

		z = rand() % 360;
		cout << x << ' ' << y << ' ' << z << endl;
		asteroids_Rotation.push_back(Vector3(x, y, z)); //set the rotation into a vector3 which will be then pushed into vector array
	}
}

void SP2::CheckAsteroidCollision()
{
	for (unsigned i = 0; i < asteroids_amt; i++)
	{
		Vector3 distance = asteroids_Pos[i] - camera.position;
		
		if (distance.Length() >= 0 + 10000)
		{
			hit == true;
		}
	}

	
}