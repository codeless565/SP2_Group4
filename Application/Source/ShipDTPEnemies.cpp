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
	for (int i = 0; i < enemyships.size(); i++)
	{
		int x, y, z;

		x = enemyships[i].x + enemyspeed * 2;
		y = enemyships[i].y + enemyspeed*1.7;
		z = enemyships[i].z + enemyspeed*2;

		modelStack.PushMatrix();
		modelStack.Translate(x, y, z);
		modelStack.Rotate(-140, 0, 1, 0);
		modelStack.Rotate(40, 1, 0, 0);
		modelStack.Scale(100, 100, 100);
		RenderMesh(meshList[ENEMYSHIP], false);
		modelStack.PopMatrix();

		enemyships[i].x = x;
		enemyships[i].y = y;
		enemyships[i].z = z;
	}

	RenderTextOnScreen(meshList[GEO_TEXT], "Enemies remaining: ", Color(0, 1, 0), 3, 0, 18);
	std::string enemyamt = std::to_string(amt);
	RenderTextOnScreen(meshList[GEO_TEXT2], enemyamt, Color(0, 1, 0), 3, 18, 18);
}

void SHIPDTP::RNGEnemyPos()
{
	int x, y, z;

	srand(time(NULL));

	for (int i = 0; i < amt; i++)
	{
		x = rand() % (5 + 1) * 100 + 7000;

		y = rand() % (5 + 1) * 100 + 6000;

		z = rand() % (5 + 1) * 300 + 7000; // space inbetween
		std::cout << x << ' ' << y << ' ' << z << std::endl;
		enemyships.push_back(Vector3(x, y, z));
	}
}