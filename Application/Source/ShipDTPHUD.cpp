#include "ShipDTP.h"
#include "GL\glew.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"

#include <math.h>

#include <iostream>
using std::cout;
using std::endl;

void SHIPDTP::InitShipHUD()
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

	meshList[HUD_BLACK] = MeshBuilder::GenerateQuad("BlackScreen", Color(1, 1, 1));
	meshList[HUD_BLACK]->textureID = LoadTGA("Image//BlackScreen.tga");

	meshList[HUD_BOOTUP] = MeshBuilder::GenerateQuad("Bootup", Color(0.f, 1.f, 0.f));

	meshList[MENU_TEXT] = MeshBuilder::GenerateText("Menu", 16, 16);
	meshList[MENU_TEXT]->textureID = LoadTGA("Image//Macropsia_BRK.tga");

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

	energyG = 1;
	energyR = 1;

	dt_time = 30;
	counting = false;
	zoneOutTime = playership.zoneOutTime() * 60;
	bouncechecktimer = 100;

	//Mission Briefing
	mission_Breifed = false;	//bool to check if player already seen this screen
	mission_brief_Time = 0;		//timer for mission briefing
	text_colorBooting = 0.8f;
	text_colorFlashing = 0.005f;
	bootUpBar = 0.01f;

	//pause
	paused = false;
	mainMenu = false;
	clickpos = 1;
	clickbounce = 0;
}
void SHIPDTP::UpdateShipHUD(double dt)
{
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
	int zt = zoneOutTime / dt_time;	//change zoneout to int value
	zt1 = std::to_string(zt);		//change zoneout time to a string to rendertext on screen
	//=================== Fuel Count ================================
	playership.ship_idling();

	if (camera.boost)
		playership.ship_boosting();
	int fuel_count = playership.getFuel();
	fuel = std::to_string(fuel_count);
	//================== Energy Count ===============================
	int energy_count = playership.getEnergy();
	energy = std::to_string(energy_count);
	//===============================================================
	bouncechecktimer++;
}
void SHIPDTP::RenderShipHUD()
{
	//====================================== CrossHair =====================================================
	RenderQuadOnScreen(meshList[PLAYERSHIP_HUD_1], 80, 60, 40, 30);
	//======================================== Fuel ========================================================
	RenderQuadOnScreen(meshList[HUD_FUELFRAME], 70, 100, 3.3f, 30);
	if (playership.boostable())
	{
		RenderQuadOnScreen(meshList[HUD_BAR], 70, playership.getFuel(), 3.3f, 12.5f + 17.5f * playership.getFuel() / 100);
	}
	else if (!playership.boostable() && bouncechecktimer % 12 != 0)
	{
		RenderQuadOnScreen(meshList[HUD_BAR], 70, playership.getFuel(), 3.3f, 12.5f + 17.5f * playership.getFuel() / 100);
	}
	RenderTextOnScreen(meshList[BNM_TEXT], fuel, Color(fuelR - (playership.getFuel() / 100), fuelG * playership.getFuel() / 100, 0), 2, 0.5f, 4.5f);
	RenderTextOnScreen(meshList[BNM_TEXT], "%", Color(fuelR - (playership.getFuel() / 100), fuelG * playership.getFuel() / 100, 0), 2.5f, 2.f, 3.55f);
	//====================================== Energy =======================================================
	RenderQuadOnScreen(meshList[HUD_ENERGYFRAME], 70, 100, 76.8f, 30);
	if (playership.shootable())
	{
		RenderQuadOnScreen(meshList[HUD_BAR], 70, playership.getEnergy(), 76.8f, 12.5f + 17.5f * playership.getEnergy() / 100);
	}
	else if (!playership.shootable() && bouncechecktimer % 12 != 0)
	{
		RenderQuadOnScreen(meshList[HUD_BAR], 70, playership.getEnergy(), 76.8f, 12.5f + 17.5f * playership.getEnergy() / 100);
	}
	RenderTextOnScreen(meshList[BNM_TEXT], energy, Color(fuelR - (playership.getEnergy() / 100), fuelG * playership.getEnergy() / 100, 0), 2, 37.3f, 4.5f);
	RenderTextOnScreen(meshList[BNM_TEXT], "%", Color(fuelR - (playership.getEnergy() / 100), fuelG * playership.getEnergy() / 100, 0), 2.5f, 31.4f, 3.55f);
	//======================================== HP =========================================================
	for (float i = 0; i < playership.getHealth() / 10; i++)
		RenderQuadOnScreen(meshList[HUD_HP], 60, 60, health[i].x, health[i].y);

	if (playership.getHealth() >= 50 && playership.getHealth() <= 100 && bouncechecktimer <= 50)
		RenderTextOnScreen(meshList[BNM_TEXT], "Hull Damaged", Color(1, 1, 0), 2, 29.5f, 2.f);
	if (playership.getHealth() > 20 && playership.getHealth() < 50 && bouncechecktimer <= 99 && bouncechecktimer % 15 != 0)
		RenderTextOnScreen(meshList[BNM_TEXT], "Hull Critical", Color(1, 0.4f, 0), 2, 29.5f, 2.f);
	if (playership.getHealth() > 0 && playership.getHealth() <= 20 && bouncechecktimer % 10 != 0)
		RenderTextOnScreen(meshList[BNM_TEXT], "WARNING", Color(1, 0, 0), 3, 20.f, 1.f);
	//===================================== ZoneOut ======================================================
	if (playership.isZoneOut(zoneOutTime))
	{
		RenderQuadOnScreen(meshList[HUD_ZONEOUT], 100, 100, 40, 30);
		if (bouncechecktimer % 18 != 0)
			RenderTextOnScreen(meshList[BNM_TEXT], "Return to Mission Area!", Color(1, 0, 0), 3.5f, 4.6f, 8.4f);

		RenderTextOnScreen(meshList[BNM_TEXT], zt1, Color(1, 0, 0), 3, 13.f, 8.f);
	}
	//===================================================================================================
}
void SHIPDTP::UpdateMissionBrief()
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

	cout << mission_brief_Time << "  " << bootUpBar << endl;
}
void SHIPDTP::RenderMissionBrief()
{
	//=============================== MISSION START TEXT ===============================================
	RenderQuadOnScreen(meshList[HUD_BLACK], 80, 60, 40, 30);

	RenderTextOnScreen(meshList[MISSION_TEXT], "MISSION 03:Defend your world", Color(1, 1, 1), 3.8f, 2.1f, 13.5f);

	if (mission_brief_Time >= 50)
	{
		RenderTextOnScreen(meshList[MISSION_TEXT], "Stop incoming hostile attacks ", Color(0.8f, 0.8f, 0.8f), 3.f, 4.8f, 14.f);
		RenderTextOnScreen(meshList[MISSION_TEXT], "Destroy all hostiles", Color(0.8f, 0.8f, 0.8f), 3.f, 7.3f, 13.f);
	}
	if (mission_brief_Time > 120)
	{
		RenderQuadOnScreen(meshList[HUD_BOOTUP], bootUpBar, 4, (20 - (20 * bootUpBar / 40)) + bootUpBar, 32);

		//Hull Integrity
		if (mission_brief_Time > 200)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hull Integrity: ", Color(0.f, 1.f, 0.f), 2.f, 11.f, 10.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Operation Ready", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 10.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hull Integrity: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 11.f, 10.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 10.f);
		}
		//Virtual Display
		if (mission_brief_Time > 250)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Virtual Display: ", Color(0.f, 1.f, 0.f), 2.f, 10.43f, 9.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 9.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Virtual Display: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 10.43f, 9.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 9.f);
		}

		//Fuel Injectors
		if (mission_brief_Time > 300)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Fuel Injectors: ", Color(0.f, 1.f, 0.f), 2.f, 11.f, 8.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 8.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Fuel Injectors: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 11.f, 8.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 8.f);
		}
		//Energy Capacitors
		if (mission_brief_Time > 350)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "ENergy Capacitors: ", Color(0.f, 1.f, 0.f), 2.f, 9.2f, 7.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 7.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "ENergy Capacitors: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 9.2f, 7.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 7.f);
		}
		//HD Systems
		if (mission_brief_Time > 400)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hyperdrive System: ", Color(0.f, 1.f, 0.f), 2.f, 9.2f, 6.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 6.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Hyperdrive System: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 9.2f, 6.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 6.f);
		}
		//Auto-Def System
		if (mission_brief_Time > 450)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Auto-Defense System: ", Color(0.f, 1.f, 0.f), 2.f, 8.f, 5.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 5.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Auto-Defense System: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 8.f, 5.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 5.f);
		}
		//Graviton Thrusters
		if (mission_brief_Time > 500)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Graviton Thrusters: ", Color(0.f, 1.f, 0.f), 2.f, 8.6f, 4.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 4.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Graviton Thrusters: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 8.6f, 4.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 4.f);
		}
		//Photon Cannons
		if (mission_brief_Time > 550)
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Photon Cannons: ", Color(0.f, 1.f, 0.f), 2.f, 11.f, 3.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Online", Color(0.f, 1.f, 0.f), 2.f, 20.5f, 3.f);
		}
		else
		{
			RenderTextOnScreen(meshList[MISSION_TEXT], "Photon Cannons: ", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 11.f, 3.f);
			RenderTextOnScreen(meshList[MISSION_TEXT], "Booting Up ...", Color(text_colorBooting, text_colorBooting, text_colorBooting), 2.f, 20.5f, 3.f);
		}
	}

	if (mission_brief_Time > 600)
		RenderTextOnScreen(meshList[MISSION_TEXT], ">> Enter", Color(text_colorBooting, text_colorBooting, text_colorBooting), 3.f, 20.f, 0.5f);

}
void SHIPDTP::UpdatePause()
{
	//======================== PAUSE =====================================
	if (Application::IsKeyPressed(VK_UP) && clickbounce >= 5)
	{
		clickpos--;
		clickbounce = 0;
	}
	if (Application::IsKeyPressed(VK_DOWN) && clickbounce >= 5)
	{
		clickpos++;
		clickbounce = 0;
	}
	if (clickpos <= 1)
		clickpos = 1;
	if (clickpos >= 2)
		clickpos = 2;

	//selection
	//retry
	if (clickpos == 1 && (Application::IsKeyPressed(VK_RETURN) || Application::IsKeyPressed(VK_SPACE)))
		paused = false;
	//main menu
	if (clickpos == 2 && (Application::IsKeyPressed(VK_RETURN) || Application::IsKeyPressed(VK_SPACE)))
		mainMenu = true;

	clickbounce++;
}
void SHIPDTP::RenderPause()
{
	RenderQuadOnScreen(meshList[HUD_BLACK], 80, 60, 40, 30);
	//Title
	RenderMenuOnScreen(meshList[MENU_TEXT], "PAUSED", Color(0.9f, 0.9f, 0.9f), 7.f, 2.8f, 5.5f);
	//continue
	if (clickpos == 1)
		RenderMenuOnScreen(meshList[MENU_TEXT], "Continue", Color(1.f, 1.f, 1.f), 4.f, 6.f, 5.f);
	else
		RenderMenuOnScreen(meshList[MENU_TEXT], "Continue", Color(0.5f, 0.5f, 0.5f), 4.f, 6.f, 5.f);
	//main
	if (clickpos == 2)
		RenderMenuOnScreen(meshList[MENU_TEXT], "Main Menu", Color(1.f, 1.f, 1.f), 4.f, 5.5f, 4.f);
	else
		RenderMenuOnScreen(meshList[MENU_TEXT], "Main Menu", Color(0.5f, 0.5f, 0.5f), 4.f, 5.5f, 4.f);

}