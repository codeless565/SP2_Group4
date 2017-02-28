#include "ShipRace.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "Mtx44.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "Utility.h"
#include "LoadTGA.h"


ShipRace::ShipRace()
{
}

ShipRace::~ShipRace()
{
}

void ShipRace::Init()
{
	// Set background color to dark blue
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

	//Enable depth buffer and depth testing
	glEnable(GL_DEPTH_TEST);

	//Enable back face culling
	glEnable(GL_CULL_FACE);

	// Enable blending
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	//Default to fill mode
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

	// Generate a default VAO for now
	glGenVertexArrays(1, &m_vertexArrayID);
	glBindVertexArray(m_vertexArrayID);

	//Load vertex and fragment shaders
	//m_programID = LoadShaders("Shader//Shading.vertexshader", "Shader//LightSource.fragmentshader");	// Use our shader
	//m_programID = LoadShaders("Shader//Texture.vertexshader", "Shader//Texture.fragmentshader");
	//m_programID = LoadShaders("Shader//Texture.vertexshader", "Shader//Blending.fragmentshader");
	m_programID = LoadShaders("Shader//Texture.vertexshader", "Shader//Text.fragmentshader");


	glUseProgram(m_programID);
	// Get a handle for our "MVP" uniform
	m_parameters[U_MVP] = glGetUniformLocation(m_programID, "MVP");
	m_parameters[U_MODELVIEW] = glGetUniformLocation(m_programID, "MV");
	m_parameters[U_MODELVIEW_INVERSE_TRANSPOSE] = glGetUniformLocation(m_programID, "MV_inverse_transpose");
	m_parameters[U_MATERIAL_AMBIENT] = glGetUniformLocation(m_programID, "material.kAmbient");
	m_parameters[U_MATERIAL_DIFFUSE] = glGetUniformLocation(m_programID, "material.kDiffuse");
	m_parameters[U_MATERIAL_SPECULAR] = glGetUniformLocation(m_programID, "material.kSpecular");
	m_parameters[U_MATERIAL_SHININESS] = glGetUniformLocation(m_programID, "material.kShininess");
	m_parameters[U_LIGHT0_POSITION] = glGetUniformLocation(m_programID, "lights[0].position_cameraspace");
	m_parameters[U_LIGHT0_COLOR] = glGetUniformLocation(m_programID, "lights[0].color");
	m_parameters[U_LIGHT0_POWER] = glGetUniformLocation(m_programID, "lights[0].power");
	m_parameters[U_LIGHT0_KC] = glGetUniformLocation(m_programID, "lights[0].kC");
	m_parameters[U_LIGHT0_KL] = glGetUniformLocation(m_programID, "lights[0].kL");
	m_parameters[U_LIGHT0_KQ] = glGetUniformLocation(m_programID, "lights[0].kQ");
	m_parameters[U_LIGHTENABLED] = glGetUniformLocation(m_programID, "lightEnabled");
	m_parameters[U_NUMLIGHTS] = glGetUniformLocation(m_programID, "numLights");
	m_parameters[U_LIGHT0_TYPE] = glGetUniformLocation(m_programID, "lights[0].type");
	m_parameters[U_LIGHT0_SPOTDIRECTION] = glGetUniformLocation(m_programID, "lights[0].spotDirection");
	m_parameters[U_LIGHT0_COSCUTOFF] = glGetUniformLocation(m_programID, "lights[0].cosCutoff");
	m_parameters[U_LIGHT0_COSINNER] = glGetUniformLocation(m_programID, "lights[0].cosInner");
	m_parameters[U_LIGHT0_EXPONENT] = glGetUniformLocation(m_programID, "lights[0].exponent");

	// Get a handle for our "colorTexture" uniform
	m_parameters[U_COLOR_TEXTURE_ENABLED] = glGetUniformLocation(m_programID, "colorTextureEnabled");
	m_parameters[U_COLOR_TEXTURE] = glGetUniformLocation(m_programID, "colorTexture");

	//Initialize camera settings
	//camera.Init(Vector3(0, 500, 0), Vector3(0, 500, 1), Vector3(0, 1, 0));

	camera.Init(Vector3(-9000, 100, -1700), Vector3(10, 100, -1700), Vector3(0, 10, 0));

	meshList[GEO_AXES] = MeshBuilder::GenerateAxes("reference", 1000, 1000, 1000);

	//meshList[GEO_QUAD] = MeshBuilder::GenerateQuad("quad", Color(0, 0, 0), 1.0f, 1.0f);
	//meshList[GEO_QUAD]->textureID = LoadTGA("Image//color2.tga");

	meshList[SPACE_FRONT] = MeshBuilder::GenerateQuad("front", Color(1, 1, 1));
	meshList[SPACE_FRONT]->textureID = LoadTGA("Image//SpaceFront.tga");

	meshList[SPACE_BACK] = MeshBuilder::GenerateQuad("back", Color(1, 1, 1));
	meshList[SPACE_BACK]->textureID = LoadTGA("Image//SpaceBack.tga");
	
	meshList[SPACE_LEFT] = MeshBuilder::GenerateQuad("left", Color(1, 1, 1));
	meshList[SPACE_LEFT]->textureID = LoadTGA("Image//SpaceLeft.tga");

	meshList[SPACE_RIGHT] = MeshBuilder::GenerateQuad("right", Color(1, 1, 1));
	meshList[SPACE_RIGHT]->textureID = LoadTGA("Image//SpaceRight.tga");

	meshList[SPACE_TOP] = MeshBuilder::GenerateQuad("top", Color(1, 1, 1));
	meshList[SPACE_TOP]->textureID = LoadTGA("Image//SpaceTop.tga");

	meshList[SPACE_BOTTOM] = MeshBuilder::GenerateQuad("bottom", Color(1, 1, 1));
	meshList[SPACE_BOTTOM]->textureID = LoadTGA("Image//SpaceBottom.tga");

	meshList[PLAYERSHIP_BODY] = MeshBuilder::GenerateOBJ("PlayerShip_Body", "OBJ//PlayerShipBody.obj");
	meshList[PLAYERSHIP_BODY]->textureID = LoadTGA("Image//PlayerShipBody.tga");

	meshList[PLAYERSHIP_ENGINE] = MeshBuilder::GenerateOBJ("PlayerShip_Engine", "OBJ//PlayerShipEngine.obj");
	meshList[PLAYERSHIP_ENGINE]->textureID = LoadTGA("Image//PlayerShipEngine.tga");

	meshList[BATTLESHIP_BODY] = MeshBuilder::GenerateOBJ("BattleShip_Body", "OBJ//BattleShipBody.obj");
	meshList[BATTLESHIP_BODY]->textureID = LoadTGA("Image//BattleShipBody.tga");

	meshList[BATTLESHIP_ENGINE] = MeshBuilder::GenerateOBJ("BattleShip_Engine", "OBJ//BattleShipEngine.obj");
	meshList[BATTLESHIP_ENGINE]->textureID = LoadTGA("Image//BattleShipEngine.tga");

	meshList[ENEMYSHIP] = MeshBuilder::GenerateOBJ("EnemyShip", "OBJ//EnemyShip.obj");
	meshList[ENEMYSHIP]->textureID = LoadTGA("Image//EnemyShip.tga");

	//meshList[GEO_LAMPLIGHT] = MeshBuilder::GenerateOBJ("lamplight", "OBJ//lamplight.obj");
	//meshList[GEO_LAMPLIGHT]->textureID = LoadTGA("Image//lamplight.tga");

	// GENERAL USE
	meshList[GEO_TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT]->textureID = LoadTGA("Image//BNMachine.tga");

	meshList[GEO_TEXT2] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT2]->textureID = LoadTGA("Image//BNMachine.tga");

	InitShipHUD();
	InitSpaceStation();
	InitAsteroidField();


	light[0].type = Light::LIGHT_SPOT;
	//light[0].position.Set(225, 3, 225); // first building light
	light[0].position.Set(0, 0, 0);
	light[0].color.Set(1, 1, 1);
	light[0].power = 1;
	light[0].kC = 1.f;
	light[0].kL = 0.01f;
	light[0].kQ = 0.001f;
	light[0].cosCutoff = cos(Math::DegreeToRadian(45));
	light[0].cosInner = cos(Math::DegreeToRadian(30));
	light[0].exponent = 3.f;
	light[0].spotDirection.Set(0.f, 1.0f, 0.f);

	// Make sure you pass uniform parameters after glUseProgram()
	glUniform1i(m_parameters[U_LIGHT0_TYPE], light[0].type);
	glUniform3fv(m_parameters[U_LIGHT0_COLOR], 1, &light[0].color.r);
	glUniform1f(m_parameters[U_LIGHT0_POWER], light[0].power);
	glUniform1f(m_parameters[U_LIGHT0_KC], light[0].kC);
	glUniform1f(m_parameters[U_LIGHT0_KL], light[0].kL);
	glUniform1f(m_parameters[U_LIGHT0_KQ], light[0].kQ);
	glUniform1f(m_parameters[U_LIGHT0_COSCUTOFF], light[0].cosCutoff);
	glUniform1f(m_parameters[U_LIGHT0_COSINNER], light[0].cosInner);
	glUniform1f(m_parameters[U_LIGHT0_EXPONENT], light[0].exponent);

	// Make sure you pass uniform parameters after glUseProgram()
	glUniform3fv(m_parameters[U_LIGHT0_COLOR], 1, &light[0].color.r);
	glUniform1f(m_parameters[U_LIGHT0_POWER], light[0].power);
	glUniform1f(m_parameters[U_LIGHT0_KC], light[0].kC);
	glUniform1f(m_parameters[U_LIGHT0_KL], light[0].kL);
	glUniform1f(m_parameters[U_LIGHT0_KQ], light[0].kQ);

	Mtx44 projection;
	projection.SetToPerspective(75.f, 4.f / 3.f, 0.1f, 50000.f);
	projectionStack.LoadMatrix(projection);

	glUniform1i(m_parameters[U_NUMLIGHTS], 1);

	playership.InitPlayerShip(camera.position, 100, 100, 100, 20);
	//playership.InitAOZone({ -8000, -8000, -2500 }, { 9000, 8000, -500 });
	playership.InitAOZone({ -10000, -1000, -2500 }, { 90000, 2000, -500 });

	enemyship.push_back(Enemy({ playership.position.x - 2000, playership.position.y + 105, playership.position.z + 298 }, 300, 100, 40, 100, 15));
	enemyship.push_back(Enemy({ playership.position.x - 2000, playership.position.y - 193, playership.position.z + 306 }, 300, 100, 40, 100, 15));
	enemyship.push_back(Enemy({ playership.position.x - 2000, playership.position.y + 113, playership.position.z - 305 }, 300, 100, 40, 100, 15));
	enemyship.push_back(Enemy({ playership.position.x - 2000, playership.position.y - 185, playership.position.z - 280 }, 300, 100, 40, 100, 15));

	position_x = camera.position.x;
	position_y = camera.position.y;
	position_z = camera.position.z;

	PShipRotateHori = 90;
	PShipRotateVerti = 0;
	GameClearTimer = 0;
}

void ShipRace::Update(double dt)
{
	framerate = 1 / dt;

	float LSPEED = 10.f;
	if (Application::IsKeyPressed('1')) //enable back face culling
		glEnable(GL_CULL_FACE);
	if (Application::IsKeyPressed('2')) //disable back face culling
		glDisable(GL_CULL_FACE);
	if (Application::IsKeyPressed('3'))
		glPolygonMode(GL_FRONT_AND_BACK, GL_FILL); //default fill mode
	if (Application::IsKeyPressed('4'))
		glPolygonMode(GL_FRONT_AND_BACK, GL_LINE); //wireframe mode


	if (Application::IsKeyPressed('I'))
		light[0].position.z -= (float)(LSPEED * dt);
	if (Application::IsKeyPressed('K'))
		light[0].position.z += (float)(LSPEED * dt);
	if (Application::IsKeyPressed('J'))
		light[0].position.x -= (float)(LSPEED * dt);
	if (Application::IsKeyPressed('L'))
		light[0].position.x += (float)(LSPEED * dt);
	if (Application::IsKeyPressed('O'))
		light[0].position.y -= (float)(LSPEED * dt);
	if (Application::IsKeyPressed('P'))
		light[0].position.y += (float)(LSPEED * dt);

	if (Application::IsKeyPressed('5'))
	{
		light[0].type = Light::LIGHT_POINT;
		glUniform1i(m_parameters[U_LIGHT0_TYPE], light[0].type);
	}
	else if (Application::IsKeyPressed('6'))
	{
		light[0].type = Light::LIGHT_DIRECTIONAL;
		glUniform1i(m_parameters[U_LIGHT0_TYPE], light[0].type);
	}
	else if (Application::IsKeyPressed('7'))
	{
		light[0].type = Light::LIGHT_SPOT;
		glUniform1i(m_parameters[U_LIGHT0_TYPE], light[0].type);
	}

	if (!captured)
	{//SpaceStation
		UpdateSpaceStation(dt);
		UpdateAsteroidField(dt);

		for (int i = 0; i < enemyship.size(); i++)
		{
			enemyship[i].chasing(dt);
		}

		CheckAsteroidCollision();
		CheckEnemyCollision();

		UpdateShipHUD(dt);

		if (!playership.isDead() && !hyperDrive)
		{
			camera.Update(dt, playership.boostable(), hyperDrive);
			//player
			if (Application::IsKeyPressed(VK_LEFT) && !Application::IsKeyPressed(VK_RIGHT))
			{
				if (Application::IsKeyPressed(VK_UP) || Application::IsKeyPressed(VK_DOWN))
				{
				}
				else
				{
					PShipRotateHori += (float)(camera.yaw);
				}
			}
			else if (Application::IsKeyPressed(VK_RIGHT) && !Application::IsKeyPressed(VK_LEFT))
			{
				if (Application::IsKeyPressed(VK_UP) || Application::IsKeyPressed(VK_DOWN))
				{
				}
				else
				{
					PShipRotateHori += (float)(camera.yaw);
				}
			}

			if (Application::IsKeyPressed(VK_UP) && !Application::IsKeyPressed(VK_DOWN))
			{
				if (Application::IsKeyPressed(VK_LEFT) || Application::IsKeyPressed(VK_RIGHT))
				{
				}
				else
				{
					PShipRotateVerti -= (float)(camera.pitch);
				}
			}
			else if (!Application::IsKeyPressed(VK_UP) && Application::IsKeyPressed(VK_DOWN))
			{
				if (Application::IsKeyPressed(VK_LEFT) || Application::IsKeyPressed(VK_RIGHT))
				{
				}
				else
				{
					PShipRotateVerti -= (float)(camera.pitch);
				}
			}
			position_x = camera.position.x;
			position_y = camera.position.y;
			position_z = camera.position.z;
		}

		if (!hyperDrive)
			playership.setPos(camera.position);
		else
		{
			position_x += (float)(500 * dt);
		}

		GameClearTimer++;
	}
}

void ShipRace::Render()
{
	if (light[0].type == Light::LIGHT_DIRECTIONAL)
	{
		Vector3 lightDir(light[0].position.x, light[0].position.y, light[0].position.z);
		Vector3 lightDirection_cameraspace = viewStack.Top() * lightDir;
		glUniform3fv(m_parameters[U_LIGHT0_POSITION], 1, &lightDirection_cameraspace.x);
	}
	else if (light[0].type == Light::LIGHT_SPOT)
	{
		Position lightPosition_cameraspace = viewStack.Top() * light[0].position;
		glUniform3fv(m_parameters[U_LIGHT0_POSITION], 1, &lightPosition_cameraspace.x);
		Vector3 spotDirection_cameraspace = viewStack.Top() * light[0].spotDirection;
		glUniform3fv(m_parameters[U_LIGHT0_SPOTDIRECTION], 1, &spotDirection_cameraspace.x);
	}
	else
	{
		Position lightPosition_cameraspace = viewStack.Top() * light[0].position;
		glUniform3fv(m_parameters[U_LIGHT0_POSITION], 1, &lightPosition_cameraspace.x);
	}

	// Render VBO here
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	//Temp variables
	Mtx44 MVP;
	viewStack.LoadIdentity();
	viewStack.LookAt(camera.position.x, camera.position.y,
		camera.position.z, camera.target.x, camera.target.y,
		camera.target.z, camera.up.x, camera.up.y, camera.up.z);
	modelStack.LoadIdentity();

	Position lightPosition_cameraspace = viewStack.Top() * light[0].position;
	glUniform3fv(m_parameters[U_LIGHT0_POSITION], 1, &lightPosition_cameraspace.x);
	
	RenderMesh(meshList[GEO_AXES], false);

	modelStack.PushMatrix();
	modelStack.Translate(camera.position.x * 0.9f, camera.position.y * 0.9f, camera.position.z * 0.9f);
	modelStack.Rotate(90, 0, 1, 0);
	RenderSkybox();
	modelStack.PopMatrix();

	// PlayerShip
	modelStack.PushMatrix();
	modelStack.Translate(position_x, position_y, position_z);
	modelStack.Rotate(PShipRotateHori, 0, 1, 0);
	modelStack.Rotate(PShipRotateVerti, 1, 0, 0);
	{
		modelStack.PushMatrix();
		modelStack.Translate(0, -7, 13);
		modelStack.Scale(5, 5, 5);
		{
			modelStack.PushMatrix();
			RenderMesh(meshList[PLAYERSHIP_BODY], false);
			modelStack.PopMatrix();

			modelStack.PushMatrix();
			RenderMesh(meshList[PLAYERSHIP_ENGINE], false);
			modelStack.PopMatrix();
		}
		modelStack.PopMatrix();
	}
	modelStack.PopMatrix();

	// Space Station
	RenderSpaceStation();

	// EnemyShip
	for (int i = 0; i < enemyship.size(); i++)
	{
		Vector3 distance = playership.position - enemyship[i].position;

		if (distance.Length() <= 2000 && !enemyship[i].isDead())
		{
			modelStack.PushMatrix();
			modelStack.Translate(enemyship[i].position.x, enemyship[i].position.y, enemyship[i].position.z);
			modelStack.Rotate(90, 0, 1, 0);
			modelStack.Scale(20, 20, 20);
			RenderMesh(meshList[ENEMYSHIP], false);
			modelStack.PopMatrix();
		}
	}

	RenderAsteroidField();

	RenderTextOnScreen(meshList[GEO_TEXT2], "FPS", Color(0, 1, 0), 2, 0, 0);
	std::string s = std::to_string(framerate);
	RenderTextOnScreen(meshList[GEO_TEXT2], s, Color(0, 1, 0), 2, 3.5f, 0);
	
	if (hyperDrive && GameClearTimer >= 1200)
		RenderTextOnScreen(meshList[GEO_TEXT2], "MISSION CLEAR", Color(1, 0, 0), 5.f, 1.75f, 5.5f);

	if (!hyperDrive)
		RenderShipHUD();
	else
		RenderQuadOnScreen(meshList[HUD_HDRIVE], hyperdriveScale, hyperdriveScale, 40, 30);
	
	//dead
	if (playership.isDead() || captured)
	{
		RenderQuadOnScreen(meshList[HUD_GAMEOVER], 100, 100, 40, 30);
		RenderTextOnScreen(meshList[GEO_TEXT2], "GAME OVER", Color(1, 0, 0), 6, 2.5f, 4.5f);
	}
}

void ShipRace::RenderSkybox()
{
	modelStack.PushMatrix();
	{
		modelStack.PushMatrix();
		modelStack.Translate(0, 0, -9995);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Scale(20000, 20000, 20000);
		RenderMesh(meshList[SPACE_FRONT], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 0, 9995);
		modelStack.Rotate(180, 0, 0, 1);
		modelStack.Rotate(-90, 1, 0, 0);
		modelStack.Scale(20000, 20000, 20000);
		RenderMesh(meshList[SPACE_BACK], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 9995, 0);
		modelStack.Rotate(180, 0, 1, 0);
		modelStack.Rotate(180, 1, 0, 0);
		modelStack.Scale(20000, 20000, 20000);
		RenderMesh(meshList[SPACE_TOP], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, -9995, 0);
		modelStack.Rotate(-180, 0, 1, 0);
		modelStack.Scale(20000, 20000, 20000);
		RenderMesh(meshList[SPACE_BOTTOM], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(-9995, 0, 0);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Rotate(-90, 0, 0, 1);
		modelStack.Scale(20000, 20000, 20000);
		RenderMesh(meshList[SPACE_LEFT], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(9995, 0, 0);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Rotate(90, 0, 0, 1);
		modelStack.Scale(20000, 20000, 20000);
		RenderMesh(meshList[SPACE_RIGHT], false);
		modelStack.PopMatrix();
	}
	modelStack.PopMatrix();
}

void ShipRace::RenderMesh(Mesh *mesh, bool enableLight)
{
	Mtx44 MVP, modelView, modelView_inverse_transpose;

	MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top();
	glUniformMatrix4fv(m_parameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);
	modelView = viewStack.Top() * modelStack.Top();
	glUniformMatrix4fv(m_parameters[U_MODELVIEW], 1, GL_FALSE, &modelView.a[0]);
	if (enableLight)
	{
		glUniform1i(m_parameters[U_LIGHTENABLED], 1);
		modelView_inverse_transpose = modelView.GetInverse().GetTranspose();
		glUniformMatrix4fv(m_parameters[U_MODELVIEW_INVERSE_TRANSPOSE], 1, GL_FALSE, &modelView_inverse_transpose.a[0]);

		//load material
		glUniform3fv(m_parameters[U_MATERIAL_AMBIENT], 1, &mesh->material.kAmbient.r);
		glUniform3fv(m_parameters[U_MATERIAL_DIFFUSE], 1, &mesh->material.kDiffuse.r);
		glUniform3fv(m_parameters[U_MATERIAL_SPECULAR], 1, &mesh->material.kSpecular.r);
		glUniform1f(m_parameters[U_MATERIAL_SHININESS], mesh->material.kShininess);
	}
	else
	{
		glUniform1i(m_parameters[U_LIGHTENABLED], 0);
	}

	if (mesh->textureID > 0)
	{
		glUniform1i(m_parameters[U_COLOR_TEXTURE_ENABLED], 1);
		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, mesh->textureID);
		glUniform1i(m_parameters[U_COLOR_TEXTURE], 0);
	}
	else
	{
		glUniform1i(m_parameters[U_COLOR_TEXTURE_ENABLED], 0);
	}
	mesh->Render();
	if (mesh->textureID > 0)
	{
		glBindTexture(GL_TEXTURE_2D, 0);
	}
}

void ShipRace::RenderMeshOnScreen(Mesh* mesh, float rotZ, int sizeX, int sizeZ, int posX, int posY)
{
	glDisable(GL_DEPTH_TEST);
	Mtx44 ortho;
	ortho.SetToOrtho(0, 80, 0, 60, -10, 10); //size of screen UI
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);
	viewStack.PushMatrix();
	viewStack.LoadIdentity(); //No need camera for ortho mode
	modelStack.PushMatrix();
	modelStack.LoadIdentity();
	//to do: scale and translate accordingly
	modelStack.Translate(posX, posY, 0);
	modelStack.Rotate(rotZ, 0, 0, 1);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(sizeX, 0, sizeZ);
	RenderMesh(mesh, false); //UI should not have light
	projectionStack.PopMatrix();
	viewStack.PopMatrix();
	modelStack.PopMatrix();
	glEnable(GL_DEPTH_TEST);
}

void ShipRace::RenderQuadOnScreen(Mesh* mesh, float sizex, float sizey, float x, float y)
{
	glDisable(GL_DEPTH_TEST);
	Mtx44 ortho;
	ortho.SetToOrtho(0, 80, 0, 60, -10, 10); //size of screen UI
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);
	viewStack.PushMatrix();
	viewStack.LoadIdentity(); //No need camera for ortho mode
	modelStack.PushMatrix();
	modelStack.LoadIdentity();
	//to do: scale and translate accordingly
	modelStack.Translate(x, y, 0);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(sizex, 0, sizey);
	RenderMesh(mesh, false); //UI should not have light
	projectionStack.PopMatrix();
	viewStack.PopMatrix();
	modelStack.PopMatrix();
	glEnable(GL_DEPTH_TEST);
}

void ShipRace::RenderText(Mesh* mesh, std::string text, Color color)
{
	if (!mesh || mesh->textureID <= 0) //Proper error check
		return;

	glDisable(GL_DEPTH_TEST);
	glUniform1i(m_parameters[U_TEXT_ENABLED], 1);
	glUniform3fv(m_parameters[U_TEXT_COLOR], 1, &color.r);
	glUniform1i(m_parameters[U_LIGHTENABLED], 0);
	glUniform1i(m_parameters[U_COLOR_TEXTURE_ENABLED], 1);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, mesh->textureID);
	glUniform1i(m_parameters[U_COLOR_TEXTURE], 0);
	for (unsigned i = 0; i < text.length(); ++i)
	{
		Mtx44 characterSpacing;
		characterSpacing.SetToTranslation(i * 1.0f, 0, 0); //1.0f is the spacing of each character, you may change this value
		Mtx44 MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top() * characterSpacing;
		glUniformMatrix4fv(m_parameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);

		mesh->Render((unsigned)text[i] * 6, 6);
	}
	glBindTexture(GL_TEXTURE_2D, 0);
	glUniform1i(m_parameters[U_TEXT_ENABLED], 0);
	glEnable(GL_DEPTH_TEST);
}

void ShipRace::RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
{
	if (!mesh || mesh->textureID <= 0) //Proper error check
		return;

	glDisable(GL_DEPTH_TEST);
	//Add these code just after glDisable(GL_DEPTH_TEST);
	Mtx44 ortho;
	ortho.SetToOrtho(0, 80, 0, 60, -10, 10); //size of screen UI
	projectionStack.PushMatrix();
	projectionStack.LoadMatrix(ortho);
	viewStack.PushMatrix();
	viewStack.LoadIdentity(); //No need camera for ortho mode

	modelStack.PushMatrix();
	modelStack.LoadIdentity(); //Reset modelStack
	modelStack.Scale(size, size, size);
	modelStack.Translate(x, y, 0);

	glUniform1i(m_parameters[U_TEXT_ENABLED], 1);
	glUniform3fv(m_parameters[U_TEXT_COLOR], 1, &color.r);
	glUniform1i(m_parameters[U_LIGHTENABLED], 0);
	glUniform1i(m_parameters[U_COLOR_TEXTURE_ENABLED], 1);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, mesh->textureID);
	glUniform1i(m_parameters[U_COLOR_TEXTURE], 0);
	for (unsigned i = 0; i < text.length(); ++i)
	{
		Mtx44 characterSpacing;
		characterSpacing.SetToTranslation(i * 1.0f + 0.5f, 0.5f, 0); //1.0f is the spacing of each character, you may change this value
		Mtx44 MVP = projectionStack.Top() * viewStack.Top() * modelStack.Top() * characterSpacing;
		glUniformMatrix4fv(m_parameters[U_MVP], 1, GL_FALSE, &MVP.a[0]);

		mesh->Render((unsigned)text[i] * 6, 6);
	}
	glBindTexture(GL_TEXTURE_2D, 0);
	glUniform1i(m_parameters[U_TEXT_ENABLED], 0);

	projectionStack.PopMatrix();
	viewStack.PopMatrix();
	modelStack.PopMatrix();

	glEnable(GL_DEPTH_TEST);
}

void ShipRace::Exit()
{
	glDeleteVertexArrays(1, &m_vertexArrayID);
	glDeleteProgram(m_programID);
}