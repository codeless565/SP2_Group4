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
	
	for (unsigned i = 0; i < 10; i++)
	{
		unsigned x, y, z;
		
		x = asteroids[i].x;
		y = asteroids[i].y;
		z = asteroids[i].z;

		modelStack.PushMatrix();
		modelStack.Translate(x * 100, y * 100, z * 100);
		modelStack.Scale(5 + i, 5 + i, 5 + i);
		RenderMesh(meshList[ASTEROID2], false);
		modelStack.PopMatrix();
	}
}

void SP2::RNGAsteroidPos()
{
	unsigned x, y, z;

	srand(time(NULL));

	for (unsigned i = 0; i < 10; i++)
	{
		x = rand() % 5 + 1;
		
		y = rand() % 5 + 1;

		z = rand() % 5 + 1;
		cout << x << ' ' << y << ' ' << z << endl;
		asteroids.push_back(Vector3(x, y, z));
	}
	
	


}