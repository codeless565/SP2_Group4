#include "SHIPDTP.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "Mtx44.h"
#include "MyMath.h"
#include "Application.h"
#include "MeshBuilder.h"
#include "Utility.h"
#include "LoadTGA.h"


SHIPDTP::SHIPDTP()
{
}

SHIPDTP::~SHIPDTP()
{
}

void SHIPDTP::Init()
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
	m_parameters[U_TEXT_ENABLED] = glGetUniformLocation(m_programID, "textEnabled");
	m_parameters[U_TEXT_COLOR] = glGetUniformLocation(m_programID, "textColor");

	//Initialize camera settings
	camera.Init(Vector3(0, 100, 0), Vector3(0, 100, 10), Vector3(0, 10, 0));

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

	meshList[GEO_PLANET] = MeshBuilder::GenerateOBJ("EnemyShip", "OBJ//planet.obj");
	meshList[GEO_PLANET]->textureID = LoadTGA("Image//planet.tga");

	// GENERAL USE
	meshList[BNM_TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[BNM_TEXT]->textureID = LoadTGA("Image//BNMachine.tga");

	meshList[MISSION_TEXT] = MeshBuilder::GenerateText("Mission", 16, 16);
	meshList[MISSION_TEXT]->textureID = LoadTGA("Image//Mishmash_BRK.tga");

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

	playership = PlayerShip({ camera.position.x, camera.position.y, camera.position.z }, 100, 100, 100, 0);
	playership.InitAOZone({ -4800, -5000, -4000 }, { 5800, 5400, 5700 });

	BShipEngine = 0;
	PShipRotateHori = 0;
	PShipRotateVerti = 0;

	enemyspeed = 0;
	fleetspeed = 0;

	fleethp = 50;
	planethp = 15;
	planet = { -7000, -7000, -7000 };

	battleship = { 8000, 8250, 8250 };
	tooclose = false;

	InitShipHUD();
	InitProjectile();
	InitWave();
	InitEnemyField();
	enemyships.clear();
	RNGEnemyPos();
}

void SHIPDTP::Update(double dt)
{
	framerate = 1 / dt;

	if (Application::IsKeyPressed('P') && !paused)
		paused = true;
	
	if (!paused)
	{
		if (mission_Breifed)
		{
			int enemysp = 50;
			enemyspeed -= (float)(enemysp * dt);

			float fleetsp = 0.1f;
			if (w1 && w2 && w3 && w4 && !w5)
			{
				fleetsp = 100;
			}
			fleetspeed -= (float)(fleetsp * dt);

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

			//BattleShip
			BShipEngine -= (float)(20 * dt);

			UpdateProjectile();
			ProjectileCollision();
			UpdateWave();
			CollideWave();

			collision();

			if (collided || (planethp == 0) || (playership.getHealth() <= 0)) // check game over
			{
				gameover = true;
			}


			if (!gameover)
			{
				//Player ship
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

				UpdateShipHUD(dt);
				camera.Update(dt, playership.boostable(), false);
				playership.setPos(camera.position);
			}
		}
		else
			UpdateMissionBrief();
	}
	else
		UpdatePause();
}

void SHIPDTP::Render()
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

	if (!paused)
	{
		if (mission_Breifed)
		{
			RenderSkybox();
			//RenderMesh(meshList[GEO_AXES], false);

			///////////////////////////////////////////////////////////////////////////////
			//
			//Object rendering
			//
			///////////////////////////////////////////////////////////////////////////////
			// RENDER PLAYER POS 
			// PlayerShip
			modelStack.PushMatrix();
			modelStack.Translate(camera.position.x, camera.position.y, camera.position.z);
			modelStack.Rotate(PShipRotateHori, 0, 1, 0);
			modelStack.Rotate(PShipRotateVerti, 1, 0, 0);
			{
				modelStack.PushMatrix();
				modelStack.Translate(0, -6, 6);
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

			// RENDER PLANET
			modelStack.PopMatrix();
			modelStack.PushMatrix();
			modelStack.Translate(-7000, -7000, -7000);
			modelStack.Rotate(180, 0, 1, 0);
			modelStack.Scale(300, 300, 300);
			RenderMesh(meshList[GEO_PLANET], false);
			modelStack.PopMatrix();


			battleship = { 8000 + fleetspeed * 2.0f, 8250 + fleetspeed*1.5f, 8250 + fleetspeed*2.0f };
			if (!collided)
			{
				// RENDER SPACE SPACESTATION AT THE OTHER END
				// EnemyShip FROMTHE OTHER END
				// BattleShip
				modelStack.PushMatrix();
				modelStack.Translate(8000 + fleetspeed * 2.0f, 8250 + fleetspeed*1.5f, 8250 + fleetspeed*2.0f);
				modelStack.Rotate(-140, 0, 1, 0);
				modelStack.Rotate(40, 1, 0, 0);
				modelStack.Scale(500, 500, 500);
				{
					modelStack.PushMatrix();
					RenderMesh(meshList[BATTLESHIP_BODY], false);
					modelStack.PopMatrix();

					modelStack.PushMatrix();
					modelStack.Rotate(BShipEngine, 0, 0, 1);
					RenderMesh(meshList[BATTLESHIP_ENGINE], false);
					modelStack.PopMatrix();
				}
				modelStack.PopMatrix();
			}

			RenderEnemyField();
			RenderWave();

			RenderProjectile();
			RenderShipHUD();
			/////////////////////////////////////////////////////////////////////////////////
			////
			//// TEXT FOR GAME
			////
			/////////////////////////////////////////////////////////////////////////////////
			RenderTextOnScreen(meshList[BNM_TEXT], "Planet Health: ", Color(0, 1, 0), 3, 0, 0);
			std::string health = std::to_string(planethp);
			RenderTextOnScreen(meshList[BNM_TEXT], health, Color(0, 1, 0), 3, 8, 0);


			if (!w5)
			{
				RenderTextOnScreen(meshList[BNM_TEXT], "Fleet health: ", Color(0, 1, 0), 3, 0, 1);
				std::string fthp = std::to_string(fleethp);
				RenderTextOnScreen(meshList[BNM_TEXT], fthp, Color(0, 1, 0), 3, 8, 1);
			}


			//if (gameover)
			//{
			//	RenderTextOnScreen(meshList[BNM_TEXT], "YOU DED", Color(0, 1, 0), 3, 10, 10);
			//}
		}
		else
			RenderMissionBrief();
	}
	else
		RenderPause();
}

void SHIPDTP::RenderSkybox()
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

void SHIPDTP::RenderQuadOnScreen(Mesh* mesh, float sizex, float sizey, float x, float y)
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

void SHIPDTP::RenderMesh(Mesh *mesh, bool enableLight)
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

void SHIPDTP::RenderText(Mesh* mesh, std::string text, Color color)
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

void SHIPDTP::RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
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
		characterSpacing.SetToTranslation(i * 0.6f + 0.5f, 0.5f, 0); //1.0f is the spacing of each character, you may change this value
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

void SHIPDTP::RenderMenuOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
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
		characterSpacing.SetToTranslation(i * 1.f + 0.5f, 0.5f, 0); //1.0f is the spacing of each character, you may change this value
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

void SHIPDTP::Exit()
{
	glDeleteVertexArrays(1, &m_vertexArrayID);
	glDeleteProgram(m_programID);
}

void SHIPDTP::collision()
{
	//==================== Playership hits Planet ==================================
	{
		Vector3 distance = camera.position - planet;
		if (distance.Length() < 1000)
		{
			{
				playership.damaged(9001);
				gameover = true;
			}
		}
	}


	//==================== Playership too near to battleship ==================================
	{
		Vector3 distance = battleship - camera.position;
		// dis ++ its w5
		if (distance.Length() < 5000)
		{
			tooclose = true;
		}
		else
			tooclose = false;
	}
}