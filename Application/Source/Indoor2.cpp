#include "Indoor2.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "Mtx44.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "Utility.h"
#include "LoadTGA.h"
#include "LoadTGAR.h"

Indoor2::Indoor2()
{
}

Indoor2::~Indoor2()
{
}

void Indoor2::Init()
{
	CreateObjects();
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

	//variable to rotate geometry
	rotateAngle = 0;

	//Initialize camera settings
	//camera.Init(Vector3(0, 500, 0), Vector3(0, 500, 1), Vector3(0, 1, 0));

	camera.Init(Vector3(170, 20, 190), Vector3(170, 20, -200), Vector3(0, 1, 0));

	meshList[GEO_AXES] = MeshBuilder::GenerateAxes("reference", 1000, 1000, 1000);

	//	meshList[GEO_QUAD] = MeshBuilder::GenerateQuad("quad", Color(0, 0, 0), 1.0f, 1.0f);
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

	meshList[STAT_WALL] = MeshBuilder::GenerateQuad("indoorwall", Color(1, 1, 1));
	meshList[STAT_WALL]->textureID = LoadTGA("Image//wall.tga");

	meshList[STAT_CIRCUIT] = MeshBuilder::GenerateQuad("circuit", Color(1, 1, 1));
	meshList[STAT_CIRCUIT]->textureID = LoadTGA("Image//wall_circuit.tga");

	meshList[STAT_OPENCIRCUIT] = MeshBuilder::GenerateQuad("circuit", Color(1, 1, 1));
	meshList[STAT_OPENCIRCUIT]->textureID = LoadTGA("Image//wall_circuit_open.tga");

	meshList[GEO_KNIFE] = MeshBuilder::GenerateOBJ("Crate", "OBJ//knife.obj");
	meshList[GEO_KNIFE]->textureID = LoadTGA("Image//knife.tga");

	meshList[STAT_FLOOR] = MeshBuilder::GenerateQuadRepeated("indoorfloor", Color(1, 1, 1));
	meshList[STAT_FLOOR]->textureID = LoadTGAR("Image//floor.tga");

	meshList[STAT_CEILING] = MeshBuilder::GenerateQuad("indoorceiling", Color(1, 1, 1));
	meshList[STAT_CEILING]->textureID = LoadTGA("Image//ceiling.tga");

	meshList[STAT_DOORB] = MeshBuilder::GenerateQuad("doorbroken", Color(1, 1, 1));
	meshList[STAT_DOORB]->textureID = LoadTGA("Image//doorbreak.tga");

	meshList[STAT_DOORC] = MeshBuilder::GenerateQuad("doorclosed", Color(1, 1, 1));
	meshList[STAT_DOORC]->textureID = LoadTGA("Image//doorclose.tga");

	meshList[STAT_VAULT] = MeshBuilder::GenerateQuad("vault", Color(1, 1, 1));
	meshList[STAT_VAULT]->textureID = LoadTGA("Image//vaultdoor.tga");

	meshList[GEO_CUBE] = MeshBuilder::GenerateOBJ("Crate", "OBJ//crate.obj");
	meshList[GEO_CUBE]->textureID = LoadTGA("Image//turret.tga");

	meshList[GEO_PEDESTAL] = MeshBuilder::GenerateOBJ("Crate", "OBJ//pedestal.obj");
	meshList[GEO_PEDESTAL]->textureID = LoadTGA("Image//turret.tga");

	// story lines
	meshList[TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[TEXT]->textureID = LoadTGA("Image//testfont.tga");

	meshList[GEO_CRATE] = MeshBuilder::GenerateOBJ("Crate", "OBJ//crate.obj");
	meshList[GEO_CRATE]->textureID = LoadTGA("Image//crate.tga");

	meshList[GEO_WALL] = MeshBuilder::GenerateOBJ("Crate", "OBJ//crate.obj");
	meshList[GEO_WALL]->textureID = LoadTGA("Image//wall.tga");

	meshList[GEO_CROWBAR] = MeshBuilder::GenerateOBJ("Crate", "OBJ//crowbar.obj");
	meshList[GEO_CROWBAR]->textureID = LoadTGA("Image//crowbar.tga");

	meshList[UI_CROW] = MeshBuilder::GenerateQuad("quad", Color(1, 0, 0));
	meshList[UI_CROW]->textureID = LoadTGA("Image//crowbarview.tga");

	meshList[ICON_KNIFE] = MeshBuilder::GenerateQuad("KNIFEicon", Color(1, 0, 0));
	meshList[ICON_KNIFE]->textureID = LoadTGA("Image//KNIFEicon.tga");

	meshList[ICON_CUBE2] = MeshBuilder::GenerateQuad("ccubecon", Color(1, 0, 0));
	meshList[ICON_CUBE2]->textureID = LoadTGA("Image//cubeicon.tga");

	meshList[ICON_CUBE1] = MeshBuilder::GenerateQuad("ccubecon", Color(1, 0, 0));
	meshList[ICON_CUBE1]->textureID = LoadTGA("Image//cube1icon.tga");

	// GENERAL USE
	meshList[GEO_TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT]->textureID = LoadTGA("Image//testfont.tga");

	meshList[GEO_TEXT2] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXT2]->textureID = LoadTGA("Image//testfont.tga");


	// coordinate text
	meshList[GEO_TEXTx] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXTx]->textureID = LoadTGA("Image//testfont.tga");

	meshList[GEO_TEXTy] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXTy]->textureID = LoadTGA("Image//testfont.tga");

	meshList[GEO_TEXTz] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[GEO_TEXTz]->textureID = LoadTGA("Image//testfont.tga");

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
	projection.SetToPerspective(75.f, 4.f / 3.f, 0.1f, 5000.f);
	projectionStack.LoadMatrix(projection);

	glUniform1i(m_parameters[U_NUMLIGHTS], 1);

	interact = false;
	door = false;
	mission1 = false;
	mission2 = false;
	mission3 = false;
	collided = false;
	pipe1 = false;
	pipe2 = false;
	knife = false;
	broken = false;

	bounce = 0;
	colbounce = 0;

	Playerpos.x = camera.position.x;
	Playerpos.y = camera.position.y - 15;
	Playerpos.z = camera.position.z;

}

void Indoor2::CreateObjects()
{
	q = { 190, 0, -190 };
	Cratepos.push_back(q);

	q = { 175, 0, -190 };
	Cratepos.push_back(q);

	q = { 100, 0, 100 };
	Cratepos.push_back(q);

	q = { -180, 0, -100 };
	Cratepos.push_back(q);
}

void Indoor2::CollisionCheck(vector<Vector3>Objpos)
{
	for (int k = 0; k != Objpos.size(); k++)
	{
		colforward = Objpos[k] - (Playerpos + camera.view);
		colback = Objpos[k] - (Playerpos - camera.view);
		colright = Objpos[k] - (Playerpos + camera.right);
		colleft = Objpos[k] - (Playerpos - camera.right);

		if (colforward.Length() < 14 && Application::IsKeyPressed('W'))
		{
			collided = true;
			colbounce = 0;
			camera.position.x = camera.position.x - camera.view.x;
			camera.position.z = camera.position.z - camera.view.z;
			camera.target = camera.position + camera.view;
		}

		if (colback.Length() < 14 && Application::IsKeyPressed('S'))
		{
			collided = true;
			colbounce = 0;
			camera.position.z = camera.position.z + camera.view.z;
			camera.position.x = camera.position.x + camera.view.x;
			camera.target = camera.position + camera.view;
		}

		if (colleft.Length() < 14 && Application::IsKeyPressed('A'))
		{
			collided = true;
			colbounce = 0;
			camera.position.z = camera.position.z + camera.right.z - camera.view.z;
			camera.position.x = camera.position.x + camera.right.x - camera.view.x;
			camera.target = camera.position + camera.view;
		}

		if (colright.Length() < 14 && Application::IsKeyPressed('D'))
		{
			collided = true;
			colbounce = 0;
			camera.position.z = camera.position.z - camera.right.z - camera.view.z;
			camera.position.x = camera.position.x - camera.right.x - camera.view.x;

			camera.target = camera.position + camera.view;
		}
	}

	if (collided == true && colbounce >= 5)
	{
		collided = false;
		colbounce = 0;
	}

	colbounce++;
}

void Indoor2::Update(double dt)
{
	CollisionCheck(Cratepos);

	framerate = 1 / dt;
	static float ROT_LIMIT = 45.f;
	static float SCALE_LIMIT = 5.f;
	static float door_transx = 1.f;

	Playerpos.x = camera.position.x;
	Playerpos.y = camera.position.y - 15;
	Playerpos.z = camera.position.z;


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

	camera.Update(dt);

	if (camera.position.x <= -185 && camera.position.z <= -180)
	{
		pipe2 = true;
		bounce = 0;
	}

	if (camera.position.x >= 170 && camera.position.z <= -170)
	{
		pipe1 = true;
		bounce = 0;
	}

	if (camera.position.x <= -180 && camera.position.z >= 90 && camera.position.z <= 100 && mission1 == false)
	{
		interact = true;
	}

	else if (camera.position.x <= -180 && camera.position.z >= 60 && camera.position.z <= 80 && mission2 == false)
	{
		interact = true;
	}


	else if (camera.position.x <= 200 && camera.position.x >= 190 && camera.position.z >= -50 && camera.position.z <= -10 && mission3 == false)
	{
		interact = true;
	}

	else
	{
		interact = false;
	}

	if (camera.position.x <= -180 && camera.position.z >= 90 && camera.position.z <= 100 && Application::IsKeyPressed('E') && pipe1 == true)
	{
		mission1 = true;
		pipe1 = false;
	}

	else if (camera.position.x <= -180 && camera.position.z >= 60 && camera.position.z <= 80 && Application::IsKeyPressed('E') && pipe2 == true)
	{
		mission2 = true;
		pipe2 = false;
	}

	else if (camera.position.x <= 10 && camera.position.z >= 0 && camera.position.z <= 10 && knife == false && mission3 == false)
	{
		knife = true;
	}

	if (camera.position.x <= 200 && camera.position.x >= 190 && camera.position.z >= -50 && camera.position.z <= -10 && Application::IsKeyPressed('E') && knife == true)
	{
		knife = false;
		mission3 = true;
		broken = true;
	}

	bounce++;
}

void Indoor2::RenderMeshOnScreen(Mesh* mesh, int x, int y, int sizex, int sizey)
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

void Indoor2::Render()
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

	RenderSkybox();
	//RenderMesh(meshList[GEO_AXES], false);


	//WALLS

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(160, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(120, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(80, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(40, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(0, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(40, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-40, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-80, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-120, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-160, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, -200);
	modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();



	////////////////////////////////////////////////

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-160, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-120, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-80, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-40, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(0, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(40, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(80, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(120, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(160, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 200);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();
	////////////////////////////////////////////////////////

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, -195);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, -155);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, -115);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, -75);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	//////////////////////////////////////////

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, -35);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	if (!broken)
	{
		RenderMesh(meshList[STAT_CIRCUIT], false);
	}

	else
	{
		RenderMesh(meshList[STAT_OPENCIRCUIT], false);
	}
	modelStack.PopMatrix();

	//////////////////////////////////////////////

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 5);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 45);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 85);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 125);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 165);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 20, 205);
	modelStack.Rotate(90, 0, 0, 1);
	modelStack.Rotate(-90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	////////////////////////////////////////////////////

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 200);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 160);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 120);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 80);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 40);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, 0);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);

	if (mission1 && mission2 && mission3)
	{
		RenderMesh(meshList[STAT_DOORB], false);
	}
	else
	{
		RenderMesh(meshList[STAT_DOORC], false);
	}
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, -40);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, -80);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, -120);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, -160);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-200, 20, -200);
	modelStack.Rotate(-90, 0, 0, 1);
	modelStack.Rotate(90, 0, 1, 0);
	modelStack.Scale(40, 40, 60);
	RenderMesh(meshList[STAT_WALL], false);
	modelStack.PopMatrix();


	//////////////////////////////////////////////////

	modelStack.PushMatrix();
	//modelStack.Rotate(90, 1, 0, 0);
	modelStack.Scale(500, 500, 500);
	RenderMesh(meshList[STAT_FLOOR], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(0, 50, 0);
	modelStack.Rotate(-180, 1, 0, 0);
	modelStack.Scale(500, 150, 500);
	RenderMesh(meshList[STAT_CEILING], false);
	modelStack.PopMatrix();

	///////////MODELS//////////////////////////////////

	for (int i = 0; i < Cratepos.size(); i++)
	{
		modelStack.PushMatrix();
		q = Cratepos[i];
		modelStack.Translate(q.x, q.y, q.z);

		if (q.x == 100 && q.y == 0 && q.z == 100)
		{
			modelStack.Rotate(90, 0, 1, 0);
			modelStack.Scale(200, 100, 30);
			RenderMesh(meshList[GEO_WALL], false);
		}

		else if (q.x == -180 && q.y == 0 && q.z == -100)
		{
			modelStack.Scale(200, 100, 30);
			RenderMesh(meshList[GEO_WALL], false);
		}

		else
		{
			modelStack.Scale(15, 15, 15);
			RenderMesh(meshList[GEO_CRATE], false);
		}
		modelStack.PopMatrix();
	}




	/////////////////////////////////////////////////


	////////MODELS END//////////////////////////////////


	if (!pipe1 && !mission1)
	{
		modelStack.PushMatrix();
		modelStack.Translate(190, 15, -190);
		modelStack.Scale(10, 10, 10);
		RenderMesh(meshList[GEO_CUBE], false);
		modelStack.PopMatrix();
	}


	if (!knife && !mission3)
	{
		modelStack.PushMatrix();
		modelStack.Translate(0, 15, 0);
		modelStack.Scale(5, 5, 5);
		RenderMesh(meshList[GEO_KNIFE], false);
		modelStack.PopMatrix();
	}
	

	if (mission1)
	{
		modelStack.PushMatrix();
		modelStack.Translate(-195, 15, 100);
		modelStack.Scale(10, 10, 10);
		RenderMesh(meshList[GEO_CUBE], false);
		modelStack.PopMatrix();
	}

	if (!pipe2 && !mission2)
	{
		modelStack.PushMatrix();
		modelStack.Translate(-190, 0, -190);
		modelStack.Scale(10, 10, 10);
		RenderMesh(meshList[GEO_CUBE], false);
		modelStack.PopMatrix();
	}

	if (mission2)
	{
		modelStack.PushMatrix();
		modelStack.Translate(-195, 15, 70);
		modelStack.Scale(10, 10, 10);
		RenderMesh(meshList[GEO_CUBE], false);
		modelStack.PopMatrix();
	}


	modelStack.PushMatrix();
	modelStack.Translate(-195, 0, 100);
	modelStack.Scale(8, 8, 8);
	RenderMesh(meshList[GEO_PEDESTAL], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-195, 0, 70);
	modelStack.Scale(8, 8, 8);
	RenderMesh(meshList[GEO_PEDESTAL], false);
	modelStack.PopMatrix();



	if (pipe2)
	{
		RenderMeshOnScreen(meshList[ICON_CUBE2], 3, 10, 5, 5);
	}

	if (pipe1)
	{
		RenderMeshOnScreen(meshList[ICON_CUBE1], 10, 10, 5, 5);
	}

	if (knife)
	{
		RenderMeshOnScreen(meshList[ICON_KNIFE], 17, 10, 5, 5);
	}

	if (pipe2 && bounce < 10)
	{
		RenderTextOnScreen(meshList[GEO_TEXT], "PIPE GA ARIMASHITA", Color(0, 0, 0), 3, 4.5f, 10);
	}

	if (interact)
	{
		RenderTextOnScreen(meshList[GEO_TEXT], "Press 'E' to interact", Color(0, 0, 0), 3, 4.5f, 10);
	}

	if (collided)
	{
		RenderTextOnScreen(meshList[GEO_TEXT], "COLLIDED", Color(0, 0, 0), 3, 1, 10);
	}
}

void Indoor2::RenderMesh(Mesh *mesh, bool enableLight)
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

void Indoor2::RenderSkybox()
{
	modelStack.PushMatrix();
	{
		modelStack.PushMatrix();
		modelStack.Translate(0, 0, -1995);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Scale(4000, 4000, 4000);
		RenderMesh(meshList[SPACE_FRONT], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 0, 1995);
		modelStack.Rotate(180, 0, 0, 1);
		modelStack.Rotate(-90, 1, 0, 0);
		modelStack.Scale(4000, 4000, 4000);
		RenderMesh(meshList[SPACE_BACK], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 1995, 0);
		modelStack.Rotate(180, 0, 1, 0);
		modelStack.Rotate(180, 1, 0, 0);
		modelStack.Scale(4000, 4000, 4000);
		RenderMesh(meshList[SPACE_TOP], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, -1995, 0);
		modelStack.Rotate(-180, 0, 1, 0);
		modelStack.Scale(4000, 4000, 4000);
		RenderMesh(meshList[SPACE_BOTTOM], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(-1995, 0, 0);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Rotate(-90, 0, 0, 1);
		modelStack.Scale(4000, 4000, 4000);
		RenderMesh(meshList[SPACE_LEFT], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(1995, 0, 0);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Rotate(90, 0, 0, 1);
		modelStack.Scale(4000, 4000, 4000);
		RenderMesh(meshList[SPACE_RIGHT], false);
		modelStack.PopMatrix();
	}
	modelStack.PopMatrix();
}

void Indoor2::RenderText(Mesh* mesh, std::string text, Color color)
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

void Indoor2::RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
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

void Indoor2::Exit()
{
	glDeleteVertexArrays(1, &m_vertexArrayID);
	glDeleteProgram(m_programID);
}
