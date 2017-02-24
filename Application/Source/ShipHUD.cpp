#include "SP2.h"
#include "GL\glew.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"

#include <math.h>

#include <iostream>
using std::cout;
using std::endl;

void SP2::InitShipHUD()
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

	bounceT = 0;
	dt_time = 30;
	counting = false;
	zoneOutTime = playership.zoneOutTime() * 60;
	Compass = 0;
	Target = { 4000, 0, 30 };

}

void SP2::UpdateShipHUD(double dt)
{
	float Player_Target = camera.view.XZDot(Target);
	float Player_Target_Length = camera.view.XZLength()*Target.XZLength();

	Compass = Math::RadianToDegree(acos(Player_Target / Player_Target_Length));

	if (camera.view.z <=0)
		Compass *= -1;

	//fuel Count
	playership.ship_idling();
	
	if (camera.boost)
		playership.ship_boosting();


	int fuel_count = playership.fuel;
	fuel = std::to_string(fuel_count);

	cout << "Compass: " << Compass << "Cam view: " << camera.view << endl;
		
	//zoneOut
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
	int zt = zoneOutTime / dt_time;
	cout << zoneOutTime << endl;
	zt1 = std::to_string(zt);
	
	bounceT++;
}

void SP2::RenderShipHUD()
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
	RenderTextOnScreen(meshList[GEO_TEXT2], fuel, Color(0, 1, 0), 2, 0.f, 4.5f);
	RenderTextOnScreen(meshList[GEO_TEXT2], "%", Color(0, 1, 0), 2.5f, 2.05f, 3.55f);

	//Energy
	RenderQuadOnScreen(meshList[HUD_ENERGYFRAME], 70, 100, 76.8f, 30);	
	RenderQuadOnScreen(meshList[HUD_BAR], 70, bounceT, 76.8f, 12.5f + 17.5f * bounceT / 100);
	RenderTextOnScreen(meshList[GEO_TEXT2], fuel, Color(0, 1, 0), 2, 36.8f, 4.5f);
	RenderTextOnScreen(meshList[GEO_TEXT2], "%", Color(0, 1, 0), 2.5f, 31.45f, 3.55f);
	//Compass
	RenderQuadOnScreen(meshList[HUD_COMPASS_N], 50, 50, 40, 50);
	RenderMeshOnScreen(meshList[HUD_COMPASS_ARROW], Compass, 50, 50, 40, 50);
	//hp
	for (float i = 0; i < playership.getHealth() / 10; i++)
		 RenderQuadOnScreen(meshList[HUD_HP], 60, 60, health[i].x, health[i].y);
	
	if (playership.getHealth() >= 50 && playership.getHealth() <= 100 && bouncechecktimer <= 50)
		RenderTextOnScreen(meshList[GEO_TEXT2], "Hull Damaged", Color(1, 0, 0), 2, 27.5f, 2.f);
	if (playership.getHealth() > 20 && playership.getHealth() < 50 && bouncechecktimer <= 100 && bouncechecktimer % 15 != 0)
		RenderTextOnScreen(meshList[GEO_TEXT2], "Hull Critical", Color(1, 0, 0), 2, 27.5f, 2.f);
	if (playership.getHealth() > 0 && playership.getHealth() <= 20 && bouncechecktimer % 10 != 0)
			RenderTextOnScreen(meshList[GEO_TEXT2], "WARNING", Color(1, 0, 0), 3, 18.5f, 1.f);
	//zone out
	if (playership.isZoneOut(zoneOutTime))
	{
		RenderQuadOnScreen(meshList[HUD_ZONEOUT], 100, 100, 40, 30);
		if (bouncechecktimer % 18 != 0)
			RenderTextOnScreen(meshList[GEO_TEXT2], "Return to Mission Area!", Color(1, 0, 0), 3.5f, 0.35f, 8.4f);

		RenderTextOnScreen(meshList[GEO_TEXT2], zt1 , Color(1, 0, 0), 3, 13.f, 8.f);
	}
	//dead
	if (playership.isDead())
	{
		RenderTextOnScreen(meshList[GEO_TEXT2], "You are dead", Color(1, 0, 0), 6, 1.f, 4.5f);
	}
}