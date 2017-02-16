#ifndef SP2_H
#define SP2_H

#include "Scene.h"
#include "FpCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"
#include <vector>


class SP2 : public Scene
{
	enum GEOMETRY_TYPE
	{
		GEO_AXES,
		GEO_QUAD,

		//SKYBOX
		SPACE_LEFT,
		SPACE_RIGHT,
		SPACE_TOP,
		SPACE_BOTTOM,
		SPACE_FRONT,
		SPACE_BACK,

		//LIGHT

		TEXT,

		//SP Model
		TEST_MODEL,
		TEST_MODEL2,
		TEST_MODEL3,
		TEST_MODEL4,

		//Ships
		SPACESTATION_TOP,
		SPACESTATION_MID,
		SPACESTATION_BOTTOM,
		SPACESTATION_BODY,

		PLAYERSHIP_BODY,
		PLAYERSHIP_ENGINE,

		BATTLESHIP_BODY,
		BATTLESHIP_ENGINE,

		ENEMYSHIP,

		//Asteroids
		ASTEROID1,
		ASTEROID2,

		
		GEO_LAMPLIGHT,

		//TEXT
		GEO_TEXT,
		GEO_TEXT2,
		GEO_TEXTx,
		GEO_TEXTy,
		GEO_TEXTz,

		// actions

		NUM_GEOMETRY,
	};

	enum UNIFORM_TYPE
	{
		U_MVP = 0,
		U_MODELVIEW,
		U_MODELVIEW_INVERSE_TRANSPOSE,
		U_MATERIAL_AMBIENT,
		U_MATERIAL_DIFFUSE,
		U_MATERIAL_SPECULAR,
		U_MATERIAL_SHININESS,
		U_LIGHT0_POSITION,
		U_LIGHT0_COLOR,
		U_LIGHT0_POWER,
		U_LIGHT0_KC,
		U_LIGHT0_KL,
		U_LIGHT0_KQ,
		U_LIGHTENABLED,
		U_LIGHT0_TYPE,
		U_LIGHT0_SPOTDIRECTION,
		U_LIGHT0_COSCUTOFF,
		U_LIGHT0_COSINNER,
		U_LIGHT0_EXPONENT,
		U_NUMLIGHTS,
		U_COLOR_TEXTURE_ENABLED,
		U_COLOR_TEXTURE,
		U_TEXT_ENABLED,
		U_TEXT_COLOR,
		U_TOTAL,
	};

public:
	SP2();
	~SP2();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();

private:
	unsigned m_vertexArrayID;
	Mesh *meshList[NUM_GEOMETRY];

	unsigned m_programID;
	unsigned m_parameters[U_TOTAL];

	FpCamera camera;

	MS modelStack, viewStack, projectionStack;

	Light light[1];
	void RenderMesh(Mesh *mesh, bool enableLight);
	void RenderSkybox();
	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);

	void InitAsteroidField();
	void RenderAsteroidField();

	void InitSpaceStation();
	void UpdateSpaceStation(double dt);
	void RenderSpaceStation();

	float rotateAngle;
	float framerate;
	float rotateskybox;

	//SpaceStation
	float SSTopRotate, SSMidRotate, SSBottomRotate, SSEntireRotate;

	//BattleShip
	float BShipEngine;

	//PlayerShip
	float PShipEngine, PShipRotateHori, PShipRotateVerti;

	//Asteroids
	void RNGAsteroidPos();
	std::vector <Vector3> asteroids;
};

#endif