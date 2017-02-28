#ifndef	SHIPDTP_H
#define SHIPDTP_H

#include "Scene.h"
#include "PShipCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"
#include <vector>
#include "PlayerShip.h"
#include "Projectile.h"


class SHIPDTP : public Scene
{
	enum GEOMETRY_TYPE
	{
		GEO_AXES,
		GEO_CUBE,
		//SKYBOX
		SPACE_LEFT,
		SPACE_RIGHT,
		SPACE_TOP,
		SPACE_BOTTOM,
		SPACE_FRONT,
		SPACE_BACK,

		//LIGHT
		//Ships
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


		BATTLESHIP_BODY,
		BATTLESHIP_ENGINE,

		ENEMYSHIP,

		GEO_PLANET,

		// TEXT
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
	SHIPDTP();
	~SHIPDTP();

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
	PlayerShip playership;

	MS modelStack, viewStack, projectionStack;

	Light light[1];
	void RenderQuadOnScreen(Mesh* mesh, float x, float y, float sizex, float sizey);
	void RenderMesh(Mesh *mesh, bool enableLight);
	void RenderSkybox();
	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);

	float rotateAngle;
	double framerate;

	int enemyspeed;
	float fleetspeed;
	int fleethp;
	int planethp;
	bool tooclose;

	void InitProjectile();
	void UpdateProjectile();
	void RenderProjectile();
	void ProjectileCollision();
	

	Projectile laser;
	float firespeed;
	float fleetfire;
	std::vector <Projectile*> laservector;
	std::vector <Projectile*> enemylaser;
	///////////////////////////////////////////////////////////////////////////////
	//
	// Enemyships
	//
	///////////////////////////////////////////////////////////////////////////////
	int amt;
	void InitEnemyField();
	void RenderEnemyField();
	void RNGEnemyPos();
	std::vector <Vector3> enemyships;


	//std::vector <Projectile*> projectile;
	//std::vector <int> fired;
	///////////////////////////////////////////////////////////////////////////////
	//
	// Waves
	//
	///////////////////////////////////////////////////////////////////////////////
	bool w1;
	bool w2;
	bool w3;
	bool w4;
	bool w5;
	bool refresh;
	bool gameover;
	bool collided = false;
	void InitWave();
	void UpdateWave();
	void RenderWave();
	void CollideWave();

	///////////////////////////////////////////////////////////////////////////////
	//
	// OBJ pos
	//
	///////////////////////////////////////////////////////////////////////////////
	Vector3 planet;
	Vector3 battleship;


	void collision();



	//BattleShip
	float BShipEngine;

	//PlayerShip
	float PShipEngine, PShipRotateHori, PShipRotateVerti;

	//HUD
	float bounceT;
	int fuelPercentage;		//Fuel % left
	std::string fuel;		//display fuel % in numeral
	float fuelG;			//green element to the number
	float fuelR;			//red element to the number
	int energyPercentage;		//Fuel % left
	std::string energy;		//display fuel % in numeral
	float energyG;			//green element to the number
	float energyR;			//red element to the number
	std::string zt1;		//zone out timer
	std::vector <Vector3> health;	//position of the hp blocks on screen
	float zoneOutTime;		//time until player is zoned out
	int bouncechecktimer;	//for hp text timer
	int dt_time;			//for zoneOut
	bool counting;			//for zoneOut
	
	void InitShipHUD();		//Inititalise the ShipHUD
	void UpdateShipHUD(double dt);	//Updates the ShipHUD
	void RenderShipHUD();	//Renders the ShipHUD

};

#endif