#include "ShipRace.h"
#include "GL\glew.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"

#include <math.h>

#include <iostream>
using std::cout;
using std::endl;

void ShipRace::InitShipHUD()
{
	meshList[PLAYERSHIP_HUD_1] = MeshBuilder::GenerateQuad("HUD_1", Color(1, 1, 1));
	meshList[PLAYERSHIP_HUD_1]->textureID = LoadTGA("Image//ShipHUD_1.tga");

	meshList[HUD_FUELFRAME] = MeshBuilder::GenerateQuad("HUD_Fuel", Color(1, 1, 1));
	meshList[HUD_FUELFRAME]->textureID = LoadTGA("Image//Ship_FuelFrame.tga");

	meshList[HUD_ENERGYFRAME] = MeshBuilder::GenerateQuad("HUD_Energy", Color(1, 1, 1));
	meshList[HUD_ENERGYFRAME]->textureID = LoadTGA("Image//Ship_EnergyFrame.tga");

	meshList[HUD_BAR] = MeshBuilder::GenerateQuad("HUD_Fuel", Color(1, 1, 1));
	meshList[HUD_BAR]->textureID = LoadTGA("Image//Ship_Fuel.tga");

	meshList[HUD_HP] = MeshBuilder::GenerateQuad("HUD_HP", Color(1, 1, 1));
	meshList[HUD_HP]->textureID = LoadTGA("Image//Ship_HP.tga");

	meshList[HUD_COMPASS_N] = MeshBuilder::GenerateQuad("HUD_Compass_N", Color(1, 1, 1));
	meshList[HUD_COMPASS_N]->textureID = LoadTGA("Image//Compass_T.tga");

	meshList[HUD_COMPASS_ARROW] = MeshBuilder::GenerateQuad("HUD_Compass_Arrow", Color(1, 1, 1));
	meshList[HUD_COMPASS_ARROW]->textureID = LoadTGA("Image//Compass_Arrow.tga");

	meshList[HUD_ZONEOUT] = MeshBuilder::GenerateQuad("HUD_ZoneOut", Color(1, 1, 1));
	meshList[HUD_ZONEOUT]->textureID = LoadTGA("Image//Ship_ZoneOut.tga");

	meshList[HUD_HDRIVE] = MeshBuilder::GenerateQuad("HyperDrive", Color(1, 1, 1));
	meshList[HUD_HDRIVE]->textureID = LoadTGA("Image//Hyperdrive.tga");

	meshList[HUD_GAMEOVER] = MeshBuilder::GenerateQuad("GameOver", Color(1, 1, 1));
	meshList[HUD_GAMEOVER]->textureID = LoadTGA("Image//GameOver.tga");

	meshList[HUD_BLACK] = MeshBuilder::GenerateQuad("BlackScreen", Color(1, 1, 1));
	meshList[HUD_BLACK]->textureID = LoadTGA("Image//BlackScreen.tga");

	meshList[HUD_BOOTUP] = MeshBuilder::GenerateQuad("Bootup", Color(0.f, 1.f, 0.f));

	//init health
	for (int i = 0; i < 10; i++)
	{
		float x, y, z;
		
		x = 58 + (i * 2);

		if (i % 2 == 0)
			y = 3.f;
		else
			y = 6.5f;

		z = 0;

		health.push_back(Vector3(x, y, z));
	}

	fuelG = 1;
	fuelR = 1;

	bounceT = 0;
	dt_time = 30;
	safezone_X = 70000;
	hyperDrive = false;
	hyperdriveScale = 0.1;
	counting = false;
	zoneOutTime = playership.zoneOutTime() * 60;
	Compass = 0;
	Target = { 70000, 0, 30 };

	overtaken = false;
	captured = false;
	captTime = 0;

	//Mission Briefing
	mission_Breifed = false;	//bool to check if player already seen this screen
	mission_brief_Time = 0;		//timer for mission briefing
	text_colorBooting = 0.8f;
	text_colorFlashing = 0.005f;
	bootUpBar = 0.01f;
}

void ShipRace::UpdateShipHUD(double dt)
{
	//==================== Compass ==================================
	float Player_Target = camera.view.XZDot(Target);
	float Player_Target_Length = camera.view.XZLength()*Target.XZLength();

	Compass = Math::RadianToDegree(acos(Player_Target / Player_Target_Length));

	if (camera.view.z <= 0)
		Compass *= -1;
	//==================== ZoneOut ==================================
	if (playership.isZoneOut(zoneOutTime))
		counting = true;
	else
		counting = false;

	if (1 / dt >= 40 && !counting)
		dt_time = 60;
	else if (1 / dt <= 40 && !counting)
		dt_time = 30;

	if (counting)
	{
		zoneOutTime -= (float)(1);
	}
	else
	{
		zoneOutTime = playership.zoneOutTime() * (dt_time);
	}
	if (zoneOutTime <= 0)	//value locking
		zoneOutTime = 0;
	int zt = zoneOutTime / dt_time;
	zt1 = std::to_string(zt);

	//=================== Fuel Count =================================
	playership.ship_idling();

	if (camera.boost)
		playership.ship_boosting();


	int fuel_count = playership.getFuel();
	fuel = std::to_string(fuel_count);

	//==================== Hyperdrive =================================
	if (playership.position.x > safezone_X && Application::IsKeyPressed(VK_SPACE))
	{
		hyperDrive = true;
	}

	if (hyperDrive)
	{
		for (int i = 0; i < enemyship.size(); i++)
		{
			if (enemyship[i].getHealth() > 0)
				enemyship[i].damaged(1000);
		}
		playership.hyperdrive(hyperDrive);
		hyperdriveScale += (float)(150 * dt);
	}
	//============= distance to overtake enemy =======================
	for (int i = 0; i < enemyship.size(); i++)
	{
		if (enemyship[i].position.x > playership.position.x + 100)
		{
			overtaken = true;
			break;
		}
		else
		{
			overtaken = false;
		}
	}

	if (overtaken)
	{
		captTime--;
	}
	else
		captTime = 300;
		
	if (captTime <= 0)
		captTime = 0;

	if (captTime <= 0)
		captured = true;

	cout << captTime << endl;
	//================= distance from goal ===========================
	dist_from_goal = safezone_X - playership.position.x;

	if (dist_from_goal <= 9000)
		nearGoal = true;
	else
		nearGoal = false;
	//================================================================	
	
	bounceT++;
}

void ShipRace::RenderShipHUD()
{
	//CrossHair
	RenderQuadOnScreen(meshList[PLAYERSHIP_HUD_1], 80, 60, 40, 30);
	//Fuel
	RenderQuadOnScreen(meshList[HUD_FUELFRAME], 70, 100, 3.3f, 30);
	if (playership.boostable())
	{
		RenderQuadOnScreen(meshList[HUD_BAR], 70, playership.getFuel(), 3.3f, 12.5f + 17.5f * playership.getFuel() / 100);
	}
	else if (!playership.boostable() && bouncechecktimer % 12 != 0)
	{
		RenderQuadOnScreen(meshList[HUD_BAR], 70, playership.getFuel(), 3.3f, 12.5f + 17.5f * playership.getFuel() / 100);
	}
	RenderTextOnScreen(meshList[GEO_TEXT], fuel, Color(fuelR - (playership.getFuel() / 100), fuelG * playership.getFuel() / 100, 0), 2, 0.5f, 4.5f);
	RenderTextOnScreen(meshList[GEO_TEXT], "%", Color(fuelR - (playership.getFuel() / 100), fuelG * playership.getFuel() / 100, 0), 2.5f, 2.f, 3.55f);

	//Energy
	RenderQuadOnScreen(meshList[HUD_ENERGYFRAME], 70, 100, 76.8f, 30);	
	RenderTextOnScreen(meshList[GEO_TEXT], "0", Color(1, 0, 0), 2, 37.5f, 4.5f);
	RenderTextOnScreen(meshList[GEO_TEXT], "%", Color(1, 0, 0), 2.5f, 31.45f, 3.55f);
	//Compass

	if (playership.position.x < safezone_X && dist_from_goal > 9000)
	{
		RenderQuadOnScreen(meshList[HUD_COMPASS_N], 50, 50, 40, 50);
		RenderMeshOnScreen(meshList[HUD_COMPASS_ARROW], Compass, 50, 50, 40, 50);
	}
	//overtake
	if (overtaken)
	{
		std::string overtake = std::to_string(dist_overtake);
		RenderTextOnScreen(meshList[GEO_TEXT], "Don't let them catch you!", Color(1, 0, 0), 3.2f, 5.5f, 17.f);
		std::string time = std::to_string(captTime);
		RenderTextOnScreen(meshList[GEO_TEXT], time, Color(1, 0, 0), 3.f, 12.7f, 17.f);
	}
	//hyperdrive
	if (playership.position.x > safezone_X)
	{
		if (bouncechecktimer % 18 != 0)
			RenderTextOnScreen(meshList[GEO_TEXT], "Safe to use HyperDrive", Color(1, 1, 1), 3.5f, 5.f, 14.f);
	}	
	if (nearGoal && dist_from_goal >= 5)
	{
		std::string goal = std::to_string(dist_from_goal);
		RenderTextOnScreen(meshList[GEO_TEXT], "Keep going!", Color(1, 1, 1), 3.5f, 8.5f, 14.f);
		RenderTextOnScreen(meshList[GEO_TEXT], goal, Color(1, 1, 1), 3.5f, 10.f, 13.f);
	}
	//hp
	for (float i = 0; i < playership.getHealth() / 10; i++)
		 RenderQuadOnScreen(meshList[HUD_HP], 60, 60, health[i].x, health[i].y);
	
	if (playership.getHealth() >= 50 && playership.getHealth() <= 100 && bouncechecktimer <= 50)
		RenderTextOnScreen(meshList[GEO_TEXT], "Hull Damaged", Color(1, 1, 0), 2, 29.5f, 2.f);
	if (playership.getHealth() > 20 && playership.getHealth() < 50 && bouncechecktimer <= 99 && bouncechecktimer % 15 != 0)
		RenderTextOnScreen(meshList[GEO_TEXT], "Hull Critical", Color(1, 0.4f, 0), 2, 29.5f, 2.f);
	if (playership.getHealth() > 0 && playership.getHealth() <= 20 && bouncechecktimer % 10 != 0)
		RenderTextOnScreen(meshList[GEO_TEXT], "WARNING", Color(1, 0, 0), 3, 20.f, 1.f);
	
	//zone out
	if (playership.isZoneOut(zoneOutTime))
	{
		RenderQuadOnScreen(meshList[HUD_ZONEOUT], 100, 100, 40, 30);
		if (bouncechecktimer % 18 != 0)
			RenderTextOnScreen(meshList[GEO_TEXT], "Return to Mission Area!", Color(1, 0, 0), 3.5f, 4.6f, 8.4f);

		RenderTextOnScreen(meshList[GEO_TEXT], zt1 , Color(1, 0, 0), 3, 13.f, 8.f);
	}
}
void ShipRace::UpdateMissionBrief()
{
	if (Application::IsKeyPressed(VK_RETURN) && mission_brief_Time > 600)
	{
		mission_Breifed = true;			//hit ENTER to start game
	}

	text_colorBooting += text_colorFlashing;

	if (text_colorBooting >= 0.8f || text_colorBooting <= 0.4f)
		text_colorFlashing *= -1;
	
	if (mission_brief_Time > 140)
	{
		bootUpBar += 0.1;
	}
	//value locking
	if (text_colorBooting >= 0.8f)
		text_colorBooting = 0.8f;
	if (text_colorBooting <= 0.4f)
		text_colorBooting = 0.4f;
	if (bootUpBar >= 40)
		bootUpBar = 40;

	mission_brief_Time++;
	
	cout << mission_brief_Time << "  "  << bootUpBar << endl;
}
void ShipRace::RenderMissionBrief()
{
	//=============================== MISSION START TEXT ===============================================
	RenderQuadOnScreen(meshList[HUD_BLACK], 80, 60, 40, 30);

	RenderTextOnScreen(meshList[MISSION_TEXT], "MISSION 02:Return to your world", Color(1, 1, 1), 3.8f, 1.3f, 13.5f);

	if (mission_brief_Time >= 50)
	{
		RenderTextOnScreen(meshList[MISSION_TEXT], "Escape the GuardShips by ", Color(0.8f, 0.8f, 0.8f), 3.f, 5.5f, 14.f);
		RenderTextOnScreen(meshList[MISSION_TEXT], "flying through the asteroid belt", Color(0.8f, 0.8f, 0.8f), 3.f, 3.5f, 13.f);
	}
	if (mission_brief_Time > 120)
	{
		RenderQuadOnScreen(meshList[HUD_BOOTUP], bootUpBar, 4, (20 - (20 * bootUpBar / 40)) + bootUpBar, 32);

		//Hull Integrity
		if (mission_brief_Time > 200)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hull Integrity: ", Color(0.f, 1.f, 0.f), 2.f, 7.f, 10.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Operation Ready", Color(0.f, 1.f, 0.f), 2.f, 16.5f, 10.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hull Integrity: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 7.f, 10.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 10.f);
		}
		//Fuel Injectors
		if (mission_brief_Time > 250)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Fuel Injectors: ", Color(0.f, 1.f, 0.f), 2.f, 7.f, 9.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 16.5f, 9.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Fuel Injectors: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 7.f, 9.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 9.f);
		}
		//Energy Capacitors
		if (mission_brief_Time > 300)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "ENergy Capacitors: ", Color(0.f, 1.f, 0.f), 2.f, 5.2f, 8.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 16.5f, 8.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "ENergy Capacitors: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 5.2f, 8.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 8.f);
		}
		//HD Systems
		if (mission_brief_Time > 350)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hyperdrive System: ", Color(0.f, 1.f, 0.f), 2.f, 5.2f, 7.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 16.5f, 7.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hyperdrive System: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 5.2f, 7.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 7.f);
		}
		//Auto-Def System
		if (mission_brief_Time > 400)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Auto-Defense System: ", Color(0.f, 1.f, 0.f), 2.f, 4.f, 6.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 16.5f, 6.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Auto-Defense System: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 4.f, 6.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 6.f);
		}
		//Graviton Thrusters
		if (mission_brief_Time > 450)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Graviton Thrusters: ", Color(0.f, 1.f, 0.f), 2.f, 4.6f, 5.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 16.5f, 5.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Graviton Thrusters: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 4.6f, 5.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 5.f);
		}
		//Photon Cannons
		if (mission_brief_Time > 500)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Photon Cannons: ", Color(1.f, 0.f, 0.f), 2.f, 7.f, 4.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Critical Damage", Color(1.f, 0.f, 0.f), 2.f, 16.5f, 4.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Photon Cannons: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 7.f, 4.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 16.5f, 4.f);
		}
	}

	if (mission_brief_Time > 600)
		RenderTextOnScreen(meshList[MISSION_TEXT], ">> Enter", Color(text_colorBooting, text_colorBooting, text_colorBooting), 3.f, 20.f, 0.5f);

}