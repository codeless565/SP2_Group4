#ifndef SHIPRACE_H
#define SHIPRACE_H

#include "Scene.h"
#include "PShipCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"

#include <vector>
#include "AABB.h"

#include "PlayerShip.h"
#include "Enemy.h"
//#include "Asteroid.h"

class ShipRace : public Scene
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
		HUD_ZONEOUT,
		HUD_HDRIVE,
		HUD_GAMEOVER,

		//MISSION Brief
		HUD_BLACK,
		HUD_BOOTUP,

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
		MISSION_TEXT,

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
	ShipRace();
	~ShipRace();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();


private:
	unsigned m_vertexArrayID;
	Mesh *meshList[NUM_GEOMETRY];

	unsigned m_programID;
	unsigned m_parameters[U_TOTAL];

	PShipCamera camera;

	MS modelStack, viewStack, projectionStack;

	Light light[1];
	void RenderMesh(Mesh *mesh, bool enableLight);
	void RenderMeshOnScreen(Mesh* mesh, float rotZ, int sizeX, int sizeZ, int posX, int posY);
	void RenderQuadOnScreen(Mesh* mesh, float x, float y, float sizex, float sizey);
	void RenderSkybox();
	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);
	
	float framerate;
	
	//MissionText
	void RenderMissionBrief();
	void UpdateMissionBrief();
	bool mission_Breifed;
	float mission_brief_Time;
	float text_colorBooting;		//for flashing the booting... text
	float text_colorFlashing;
	float bootUpBar;				//For scaling the boot up bar

	//PlayerShip
	PlayerShip playership;
	float PShipEngine, PShipRotateHori, PShipRotateVerti;
	float position_x, position_y, position_z;	//position of the player

	//HUD
	float bounceT;			
	float Compass;			//compass direction
	int fuelPercentage;		//Fuel % left
	std::string fuel;		//display fuel % in numeral
	float fuelG;			//green element to the number
	float fuelR;			//red element to the number
	std::string zt1;		//zone out timer
	std::vector <Vector3> health;	//position of the hp blocks on screen
	float zoneOutTime;		//time until player is zoned out

	void InitShipHUD();		//Inititalise the ShipHUD
	void UpdateShipHUD(double dt);	//Updates the ShipHUD
	void RenderShipHUD();	//Renders the ShipHUD
		
	bool hyperDrive;		//check if hyperdrive engaged
	int hyperdriveScale;	//HD Fx
	int safezone_X;			//SafeZone location

	//EnemyShip
	std::vector <Enemy> enemyship;
	int dist_overtake;
	bool overtaken;
	bool captured;
	int captTime;

	//Target location
	Vector3 Target;
	int goal;
	int dist_from_goal;
	bool nearGoal;
	float GameClearTimer;


	//SpaceStation
	float SSTopRotate, SSMidRotate, SSBottomRotate, SSEntireRotate;

	void InitSpaceStation();			//Initialize the SpaceStation
	void UpdateSpaceStation(double dt);	//Animate the SpaceStation
	void RenderSpaceStation();			//Render the SpaceStation
	
	//Asteroids
	std::vector <Vector3> asteroids_Pos;		//asteroids position
	std::vector <Vector3> asteroids_Curr;		//asteroids current position
	std::vector <Vector3> asteroids_Rotation;	//asteroids rotation
	std::vector <int> asteroids_Speed;			//asteroids speed
	std::vector <int> asteroid_Rev;			//asteroids curr direction
	unsigned int asteroids_amt;					//number of asteroids
	int max_dist;
	bool hit;
	int bouncechecktimer;
	int dt_time;
	bool counting;

	void RNGAsteroidPos();			//generate asteroids
	void InitAsteroidField();		//Initialize the Asteroid values
	void UpdateAsteroidField(double dt);	//Updates the Asteroids
	void RenderAsteroidField();		//Render the Asteroids
	void CheckAsteroidCollision();	//Checks Collision with Asteroid
	void CheckEnemyCollision();		//Checks Collision against enemy
};

#endif