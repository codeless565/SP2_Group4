#include "SHIPDTP.h"
#include "GL\glew.h"
#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"


void SHIPDTP::InitEnemyField()
{
	meshList[ENEMYSHIP] = MeshBuilder::GenerateOBJ("EnemyShip", "OBJ//EnemyShip.obj");
	meshList[ENEMYSHIP]->textureID = LoadTGA("Image//EnemyShip.tga");

	amt = 3;
}


void SHIPDTP::RenderEnemyField()
{
	for (int i = 0; i < enemyships.size(); i++) //  enemyships.size()
	{
		int x, y, z;

		x = enemyships[i].x + enemyspeed * 2;
		y = enemyships[i].y + enemyspeed*0.8;
		z = enemyships[i].z + enemyspeed*0.9;

		modelStack.PushMatrix();
		modelStack.Translate(x, y, z);
		modelStack.Rotate(-115, 0, 1, 0);
		modelStack.Rotate(20, 1, 0, 0);
		modelStack.Scale(20, 20, 20);
		RenderMesh(meshList[ENEMYSHIP], false);
		modelStack.PopMatrix();

		enemyships[i].x = x;
		enemyships[i].y = y;
		enemyships[i].z = z;
	}

	RenderTextOnScreen(meshList[GEO_TEXT], "Enemies remaining: ", Color(0, 1, 0), 3, 0, 16);
	std::string enemyamt = std::to_string(amt);
	RenderTextOnScreen(meshList[GEO_TEXT2], enemyamt, Color(0, 1, 0), 3, 18, 16);
}

void SHIPDTP::RNGEnemyPos()
{
	int x, y, z;

	srand(time(NULL));

	for (int i = 0; i < amt; i++)
	{
		x = rand() % (5 + 1) * 100 + 2200;

		y = rand() % (5 + 1) * 100 + 500;

		z = rand() % (5 + 1) * 150 + 850; // space inbetween
		std::cout << x << ' ' << y << ' ' << z << std::endl;
		enemyships.push_back(Vector3(x, y, z));
	}
}