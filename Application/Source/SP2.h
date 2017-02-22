#ifndef SP2_H
#define SP2_H

#include "Scene.h"
#include "FpCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"

#include <vector>
#include "AABB.h"

#include "Player.h"

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

		//SP Model
		TEST_MODEL,
		TEST_MODEL2,
		TEST_MODEL3,
		TEST_MODEL4,

		//Player
		PLAYERSHIP_BODY,
		PLAYERSHIP_ENGINE,
		PLAYERSHIP_HUD_1,
		PLAYERSHIP_HUD_2,
		HUD_FUELFRAME,
		HUD_ENERGYFRAME,
		HUD_BAR,
		HUD_COMPASS_N,
		HUD_COMPASS_ARROW,
		HUD_HP,

		SPACESTATION_TOP,
		SPACESTATION_MID,
		SPACESTATION_BOTTOM,
		SPACESTATION_BODY,
		
		//Ships
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
	void RenderMeshOnScreen(Mesh* mesh, float rotZ, int sizeX, int sizeZ, int posX, int posY);
	void RenderQuadOnScreen(Mesh* mesh, float x, float y, float sizex, float sizey);
	void RenderSkybox();
	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);
	
	float rotateAngle;
	float framerate;
	float rotateskybox;

	//PlayerShip
	Player player;
	float PShipEngine, PShipRotateHori, PShipRotateVerti;
	float PShipRoll;
	float PShipAccel;
	float bounceT;
	float Compass;
	int fuelPercentage;
	std::string fuel;
	std::vector <Vector3> health;

	void InitShipHUD();
	void UpdateShipHUD(double dt);
	void RenderShipHUD();

	//Target location
	Vector3 Target;

	//SpaceStation
	float SSTopRotate, SSMidRotate, SSBottomRotate, SSEntireRotate;

	void InitSpaceStation();			//Initialize the SpaceStation
	void UpdateSpaceStation(double dt);	//Animate the SpaceStation
	void RenderSpaceStation();			//Render the SpaceStation
	
	//BattleShip
	float BShipEngine;

	//Asteroids
	std::vector <Vector3> asteroids_Pos;		//asteroids position
	std::vector <Vector3> asteroids_Rotation;	//asteroids rotation
	unsigned int asteroids_amt;					//number of asteroids
	bool hit;
	int bouncechecktimer;

	void RNGAsteroidPos();		//generate asteroids
	void InitAsteroidField();	//Initialize the Asteroid values
	void RenderAsteroidField();	//Render the Asteroids
	void CheckAsteroidCollision(int displacementX, int displacementY, int displacementZ); //Checks Collsion with Asteroid
};

#endif