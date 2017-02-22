#include "SP2.h"

#include "GL\glew.h"

#include "shader.hpp"
#include "Mtx44.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "Utility.h"
#include "LoadTGA.h"

void SP2::InitSpaceStation()
{
	meshList[SPACESTATION_TOP] = MeshBuilder::GenerateOBJ("SpaceStation_Top", "OBJ//SSTop.obj");
	meshList[SPACESTATION_TOP]->textureID = LoadTGA("Image//SSTop.tga");

	meshList[SPACESTATION_MID] = MeshBuilder::GenerateOBJ("SpaceStation_Mid", "OBJ//SSMid.obj");
	meshList[SPACESTATION_MID]->textureID = LoadTGA("Image//SSMid.tga");

	meshList[SPACESTATION_BOTTOM] = MeshBuilder::GenerateOBJ("SpaceStation_Bottom", "OBJ//SSBottom.obj");
	meshList[SPACESTATION_BOTTOM]->textureID = LoadTGA("Image//SSBottom.tga");

	meshList[SPACESTATION_BODY] = MeshBuilder::GenerateOBJ("SpaceStation_Bottom", "OBJ//SSBody.obj");
	meshList[SPACESTATION_BODY]->textureID = LoadTGA("Image//SSBody.tga");

	SSTopRotate = 0;
	SSMidRotate = 0; 
	SSBottomRotate = 0; 
	SSEntireRotate = 0;;
}

void SP2::UpdateSpaceStation(double dt)
{
	SSTopRotate += (float)(10 * dt);
	SSMidRotate -= (float)(10 * dt);
	SSBottomRotate += (float)(15 * dt);
	SSEntireRotate += (float)(2 * dt);
}

void SP2::RenderSpaceStation()
{
	modelStack.PushMatrix();
	modelStack.Translate(-2000, 10, 3000);
	modelStack.Rotate(30, 0, 0, 1);
	modelStack.Rotate(SSEntireRotate, 0, 1, 0);
	modelStack.Scale(300, 300, 300);
	{
		modelStack.PushMatrix();
		modelStack.Rotate(SSTopRotate, 0, 1, 0);
		RenderMesh(meshList[SPACESTATION_TOP], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Rotate(SSMidRotate, 0, 1, 0);
		RenderMesh(meshList[SPACESTATION_MID], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Rotate(SSBottomRotate, 0, 1, 0);
		RenderMesh(meshList[SPACESTATION_BOTTOM], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		RenderMesh(meshList[SPACESTATION_BODY], false);
		modelStack.PopMatrix();
	}
	modelStack.PopMatrix();
}