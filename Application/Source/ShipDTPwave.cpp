#include "SHIPDTP.h"
#include "GL\glew.h"
#include "Application.h"

void SHIPDTP::InitWave()
{
	w1 = false;
	w2 = false;
	w3 = false;
	w4 = false;
	w5 = false;
	gameover = false;
	refresh = true;
	collided = false;
}

void SHIPDTP::UpdateWave()
{
	if (!w1 && amt == 0) // check for level 1, if completed, go level 2
	{
		w1 = !w1;
		refresh = false;
		amt = 5;
	}

	if (!w2 && amt == 0) // check for level 2, if completed, go level 3
	{
		w2 = !w2;
		refresh = false;
		amt = 7;
	}

	if (!w3 && amt == 0) // check for level 3, if completed, go level 4
	{
		w3 = !w3;
		refresh = false;
		amt = 9;
	}

	if (!w4 && amt == 0) // check for level 4, if completed, go level 5
	{
		w4 = !w4;
		refresh = false;
	}


	if (w1 && !w2 && !refresh) // gg lvl 2, amt 5
	{
		enemyships.clear();
		RNGEnemyPos();
		refresh = true;
		enemyspeed = 0;
	}
	if (w1 && w2 && !w3 && !refresh) // gg lvl 3, amt 7
	{
		enemyships.clear();
		RNGEnemyPos();
		refresh = true;
		enemyspeed = 0;
	}
	if (w1 && w2 && w3 && !w4 && !refresh) // gg lvl 4, amt 9
	{
		enemyships.clear();
		amt = 9;
		RNGEnemyPos();
		refresh = true;
		enemyspeed = 0;
	}
	if (w1 && w2 && w3 && w4 && !w5) // gg lvl 5
	{
		enemyships.clear();
	}
}

void SHIPDTP::RenderWave()
{
	RenderTextOnScreen(meshList[GEO_TEXT], "Wave: ", Color(0, 1, 0), 3, 0, 17);

	if (!w1)
	{
		RenderTextOnScreen(meshList[GEO_TEXT2], "1", Color(0, 1, 0), 3, 5, 17);
	}
	else if (w1 && !w2)
	{
		RenderTextOnScreen(meshList[GEO_TEXT2], "2", Color(0, 1, 0), 3, 5, 17);
	}
	else if (w1 && w2 && !w3)
	{
		RenderTextOnScreen(meshList[GEO_TEXT2], "3", Color(0, 1, 0), 3, 5, 17);
	}
	else if (w1 && w2 && w3 && !w4)
	{
		RenderTextOnScreen(meshList[GEO_TEXT2], "4", Color(0, 1, 0), 3, 5, 17);
	}
	else
	{
		if (w1 && w2 && w3 && w4 && !w5)
		{
			RenderTextOnScreen(meshList[GEO_TEXT2], "5", Color(0, 1, 0), 3, 5, 17);
		}
	}
}

void SHIPDTP::CollideWave()
{
	// enemy ships hit planet
	for (int i = 0; i < enemyships.size(); i++) 
	{
		Vector3 distance = enemyships[i] - planet;

		if (distance.Length() < 1000)
		{
			enemyships.erase(enemyships.begin() + i);
			planethp--;
			amt--;
		}
	}

	{// battleship hit planet
		Vector3 distance2 = battleship - planet;

		if (distance2.Length() < 2700)
		{
			collided = true;
		}
	}

	{// player hit enemyship
		for (int i = 0; i < enemyships.size(); i++)
		{
			Vector3 distance = enemyships[i] - camera.position;

			if (distance.Length() < 200)
			{
				playership.damaged(60); // 
				enemyships.erase(enemyships.begin() + i);
				amt--;
				bouncechecktimer = 0;
			}
		}
	}
}