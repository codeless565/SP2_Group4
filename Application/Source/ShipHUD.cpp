#include "SP2.h"
#include "GL\glew.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "LoadTGA.h"

#include <iostream>
using std::cout;
using std::endl;

void SP2::InitShipHUD()
{
	meshList[PLAYERSHIP_HUD_1] = MeshBuilder::GenerateQuad("HUD_1", Color(1, 1, 1));
	meshList[PLAYERSHIP_HUD_1]->textureID = LoadTGA("Image//ShipHUD_1.tga");

	meshList[HUD_FRAME] = MeshBuilder::GenerateQuad("HUD_Fuel", Color(1, 1, 1));
	meshList[HUD_FRAME]->textureID = LoadTGA("Image//Ship_FuelFrame.tga");

	meshList[HUD_BAR] = MeshBuilder::GenerateQuad("HUD_Fuel", Color(1, 1, 1));
	meshList[HUD_BAR]->textureID = LoadTGA("Image//Ship_Fuel.tga");

	meshList[HUD_COMPASS_N] = MeshBuilder::GenerateQuad("HUD_Compass_N", Color(1, 1, 1));
	meshList[HUD_COMPASS_N]->textureID = LoadTGA("Image//Compass_N.tga");

	meshList[HUD_COMPASS_ARROW] = MeshBuilder::GenerateQuad("HUD_Compass_Arrow", Color(1, 1, 1));
	meshList[HUD_COMPASS_ARROW]->textureID = LoadTGA("Image//Compass_Arrow.tga");

	bounceT = 100;
	Compass = 0;
}

void SP2::UpdateShipHUD(double dt)
{
	bounceT -= 0.1f;
	Compass -= 1.f;
}

void SP2::RenderShipHUD()
{
	//CrossHair
	RenderQuadOnScreen(meshList[PLAYERSHIP_HUD_1], 80, 60, 40, 30);
	//Fuel
	RenderQuadOnScreen(meshList[HUD_FRAME], 50, 100, 2.5f, 30);
	RenderQuadOnScreen(meshList[HUD_BAR], 50, bounceT, 2.5f, 12.5f + 17.5f * bounceT / 100);
	//Energy
	RenderQuadOnScreen(meshList[HUD_FRAME], 50, 100, 77.5f, 30);	
	RenderQuadOnScreen(meshList[HUD_BAR], 50, bounceT, 77.5f, 12.5f + 17.5f * bounceT / 100);
	//Compass
	RenderQuadOnScreen(meshList[HUD_COMPASS_N], 50, 50, 40, 11);
	RenderMeshOnScreen(meshList[HUD_COMPASS_ARROW], Compass, 50, 50, 40, 11);
}