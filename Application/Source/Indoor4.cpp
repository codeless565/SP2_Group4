#include "Indoor4.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "Mtx44.h"

#include "Application.h"
#include "MeshBuilder.h"
#include "Utility.h"
#include "LoadTGA.h"


Indoor4::Indoor4()
{
}

Indoor4::~Indoor4()
{
}

void Indoor4::Init()
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

	//variable to rotate geometry
	rotateAngle = 0;

	//Initialize camera settings
	//camera.Init(Vector3(0, 500, 0), Vector3(0, 500, 1), Vector3(0, 1, 0));

	camera.Init(Vector3(0, 20, 0), Vector3(0, 20, -1), Vector3(0, 1, 0));

	meshList[GEO_AXES] = MeshBuilder::GenerateAxes("reference", 1000, 1000, 1000);

	//meshList[GEO_QUAD] = MeshBuilder::GenerateQuad("quad", Color(0, 0, 0), 1.0f, 1.0f);
	//meshList[GEO_QUAD]->textureID = LoadTGA("Image//color2.tga");

	meshList[SPACE_FRONT] = MeshBuilder::GenerateQuad("front", Color(1, 1, 1));
	meshList[SPACE_FRONT]->textureID = LoadTGA("Image//vaultdoor.tga"); // SpaceFront

	meshList[SPACE_BACK] = MeshBuilder::GenerateQuad("back", Color(1, 1, 1));
	meshList[SPACE_BACK]->textureID = LoadTGA("Image//ceiling.tga"); //SpaceBack

	meshList[SPACE_LEFT] = MeshBuilder::GenerateQuad("left", Color(1, 1, 1));
	meshList[SPACE_LEFT]->textureID = LoadTGA("Image//ceiling.tga"); // SpaceLeft

	meshList[SPACE_RIGHT] = MeshBuilder::GenerateQuad("right", Color(1, 1, 1));
	meshList[SPACE_RIGHT]->textureID = LoadTGA("Image//ceiling.tga"); //SpaceRight

	meshList[SPACE_TOP] = MeshBuilder::GenerateQuad("top", Color(1, 1, 1));
	meshList[SPACE_TOP]->textureID = LoadTGA("Image//ceiling.tga"); //SpaceTop

	meshList[SPACE_BOTTOM] = MeshBuilder::GenerateQuad("bottom", Color(1, 1, 1));
	meshList[SPACE_BOTTOM]->textureID = LoadTGA("Image//ceiling.tga"); //SpaceBottom

	meshList[SPACE_BOTTOM] = MeshBuilder::GenerateQuad("bottom", Color(1, 1, 1));
	meshList[SPACE_BOTTOM]->textureID = LoadTGA("Image//floor.tga");

	meshList[GEO_CUBE] = MeshBuilder::GenerateCube("cube", Color(1, 1, 1));
	//meshList[GEO_CUBE]->textureID = LoadTGA("Image//ceiling_1.tga");

	meshList[GEO_CRATE] = MeshBuilder::GenerateOBJ("Crate", "OBJ//Crate.obj");
	meshList[GEO_CRATE]->textureID = LoadTGA("Image//Crate.tga");

	meshList[GEO_CRATE_1] = MeshBuilder::GenerateOBJ("Crate1", "OBJ//Crate.obj");
	meshList[GEO_CRATE_1]->textureID = LoadTGA("Image//Crate1.tga");

	meshList[GEO_CRATE_5] = MeshBuilder::GenerateOBJ("Crate5", "OBJ//Crate.obj");
	meshList[GEO_CRATE_5]->textureID = LoadTGA("Image//Crate5.tga");

	meshList[GEO_CRATE_8] = MeshBuilder::GenerateOBJ("Crate8", "OBJ//Crate.obj");
	meshList[GEO_CRATE_8]->textureID = LoadTGA("Image//Crate8.tga");


	///////////////////////////////////////////////////////////////////////
	meshList[GEO_SCREEN] = MeshBuilder::GenerateQuad("screen", Color(0, 0, 0));
	//meshList[GEO_SCREEN]->textureID = LoadTGA("Image//KEYPAD.tga");


	meshList[GEO_QUAD] = MeshBuilder::GenerateQuad("quad", Color(1, 1, 1));
	meshList[GEO_QUAD]->textureID = LoadTGA("Image//KEYPAD.tga");

	// story lines
	meshList[TEXT] = MeshBuilder::GenerateText("text", 16, 16);
	meshList[TEXT]->textureID = LoadTGA("Image//testfont.tga");

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


}

void Indoor4::Update(double dt)
{
	bouncing++;
	framerate = 1 / dt;
	static float ROT_LIMIT = 45.f;
	static float SCALE_LIMIT = 5.f;
	static float door_transx = 1.f;
	elapsedTime += dt;

	float LSPEED = 10.f;
	if (Application::IsKeyPressed('U')) //enable back face culling
		glEnable(GL_CULL_FACE);
	if (Application::IsKeyPressed('I')) //disable back face culling
		glDisable(GL_CULL_FACE);
	if (Application::IsKeyPressed('O'))
		glPolygonMode(GL_FRONT_AND_BACK, GL_FILL); //default fill mode
	if (Application::IsKeyPressed('P'))
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

	camera.Update(1 * dt);
}

void Indoor4::Render()
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
	//For the five pyramid crates

	modelStack.PushMatrix();
	modelStack.Translate(100, 0, 0);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(100, 0, 100);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(50, 0, 50);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(100, 0, 50);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(100, 50, 50);
	modelStack.Scale(50, 48, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(150, 0, 50);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE_5], false);
	modelStack.PopMatrix();



	//  Loner cube 

	modelStack.PushMatrix();
	modelStack.Translate(400, 0, 50);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();



	//Four crate in a row
	modelStack.PushMatrix();
	modelStack.Translate(-100, 0, -100);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-100, 0, -150);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-100, 0, -250);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(-100, 0, -200);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();


	//2 pairs of parallel crates

	modelStack.PushMatrix();
	modelStack.Translate(150, 0, -200);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(150, 0, -300);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 0, -200);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(200, 0, -300);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE_1], false);
	modelStack.PopMatrix();



	// Four crates in a square

	modelStack.PushMatrix();
	modelStack.Translate(100, 0, 300);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(100, 0, 350);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(150, 0, 300);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE], false);
	modelStack.PopMatrix();

	modelStack.PushMatrix();
	modelStack.Translate(150, 0, 350);
	modelStack.Scale(50, 50, 50);
	RenderMesh(meshList[GEO_CRATE_8], false);
	modelStack.PopMatrix();


	//Keypad
	modelStack.PushMatrix();
	modelStack.Rotate(-70, 0, 1, 0);
	modelStack.Translate(-300, 50, 505);
	modelStack.Rotate(-90, 1, 0, 0);
	modelStack.Rotate(180, 0, 1, 0);
	modelStack.Scale(10, 10, 10);
	RenderMesh(meshList[GEO_QUAD], false);
	modelStack.PopMatrix();


	if (camera.position.x >= -515 && camera.position.x <= -490 && camera.position.z >= -170 && camera.position.z <= -50)
	{
		RenderScreen();
		//RenderSkybox(); 
		//Typing();

	}
	else
	{
		if (passwrong)
		{
			FirstDigit = true;
			SecondDigit = false;
			ThirdDigit = false;
			pass = false;
			passcorrect = false;
			passwrong = false;
			x = 10;
			y = 10;
			z = 10;
		}
	}

	if (camera.position.x >= -515 && camera.position.x <= -490 && camera.position.z >= -170 && camera.position.z <= -50)
	{
		//FirstDigit = true;

		if (FirstDigit == true)
		{
			RenderTextOnScreen(meshList[GEO_TEXT], " Please Enter 3-Digit code ", Color(0, 1, 0), 2, 1, 29);

			RenderTextOnScreen(meshList[GEO_TEXT], " Please input first digit : ", Color(0, 1, 0), 2, 1, 28);
			NumberInput();
			if (x != 10 && bouncing >= 20)
			{
				NumberOutput();
				FirstDigit = false;
				SecondDigit = true;
				bouncing = 0;
			}
			//bouncing = 0;
			
		}
		

		if (FirstDigit == false && SecondDigit == true)
		{
			RenderTextOnScreen(meshList[GEO_TEXT], " Please Enter 3-Digit code ", Color(0, 1, 0), 2, 1, 29);

			RenderTextOnScreen(meshList[GEO_TEXT], " Please input first digit : ", Color(0, 1, 0), 2, 1, 28);
			NumberOutput();

			RenderTextOnScreen(meshList[GEO_TEXT], " Please input second digit : ", Color(0, 1, 0), 2, 1, 25);

			NumberInput2();

			if (y != 10 && bouncing >= 20)
			{
				NumberOutput2();
				SecondDigit = false;
				ThirdDigit = true;
				bouncing = 0;
			}
			//bouncing = 0;
		}

		if (FirstDigit == false && SecondDigit == false && ThirdDigit == true)
		{
			RenderTextOnScreen(meshList[GEO_TEXT], " Please Enter 3-Digit code ", Color(0, 1, 0), 2, 1, 29);

			RenderTextOnScreen(meshList[GEO_TEXT], " Please input first digit : ", Color(0, 1, 0), 2, 1, 28);
			NumberOutput();

			RenderTextOnScreen(meshList[GEO_TEXT], " Please input second digit : ", Color(0, 1, 0), 2, 1, 25);
			NumberOutput2();

			RenderTextOnScreen(meshList[GEO_TEXT], " Please input third digit : ", Color(0, 1, 0), 2, 1, 22);

			NumberInput3();


			if (z != 10 && bouncing >= 20)
			{
				NumberOutput3();
				ThirdDigit = false;
				bouncing = 0;
				CheckCode();

			}
		}
	}
}

void Indoor4::RenderScreen()
{
	if (pass)
	{
		modelStack.PushMatrix();
		modelStack.Rotate(-70, 0, 1, 0);
		modelStack.Translate(0, 50, 0);
		modelStack.Rotate(-90, 1, 0, 0);
		modelStack.Rotate(180, 0, 1, 0);
		modelStack.Scale(100, 100, 100);
		RenderMeshOnScreen(meshList[GEO_SCREEN], 40, 30, 75, 60);
		modelStack.PopMatrix();

		RenderTextOnScreen(meshList[GEO_TEXT], " Please Enter 3-Digit code ", Color(0, 1, 0), 2, 1, 29);

		RenderTextOnScreen(meshList[GEO_TEXT], " Please input first digit : ", Color(0, 1, 0), 2, 1, 28);
		NumberOutput();

		RenderTextOnScreen(meshList[GEO_TEXT], " Please input second digit : ", Color(0, 1, 0), 2, 1, 25);
		NumberOutput2();

		RenderTextOnScreen(meshList[GEO_TEXT], " Please input third digit : ", Color(0, 1, 0), 2, 1, 22);
		NumberOutput3();


		if (passcorrect)
		{
			RenderTextOnScreen(meshList[GEO_TEXT2], "ACCESS GRANTED", Color(0, 1, 0), 2, 10, 15);
		}
		else
		{
			if (passwrong)
			{
				RenderTextOnScreen(meshList[GEO_TEXT2], "ACCESS DENIED", Color(0, 1, 0), 2, 10, 15);
			}
		}
	}
	else
	{
		modelStack.PushMatrix();
		modelStack.Rotate(-70, 0, 1, 0);
		modelStack.Translate(0, 50, 0);
		modelStack.Rotate(-90, 1, 0, 0);
		modelStack.Rotate(180, 0, 1, 0);
		modelStack.Scale(100, 100, 100);
		RenderMeshOnScreen(meshList[GEO_SCREEN], 40, 30, 75, 60);
		modelStack.PopMatrix();
	}
}

void Indoor4::RenderMesh(Mesh *mesh, bool enableLight)
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

void Indoor4::RenderSkybox()
{
	modelStack.PushMatrix();
	modelStack.Rotate(rotateskybox, 0, 1, 0);
	{
		modelStack.PushMatrix();
		modelStack.Translate(0, 49.875, -498.75);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Scale(1000, 50, 100);
		RenderMesh(meshList[SPACE_FRONT], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 49.875, 498.75);
		modelStack.Rotate(180, 0, 0, 1);
		modelStack.Rotate(-90, 1, 0, 0);
		modelStack.Scale(1000, 50, 100);
		RenderMesh(meshList[SPACE_BACK], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 99.75, 0);
		modelStack.Rotate(180, 0, 1, 0);
		modelStack.Rotate(180, 1, 0, 0);
		modelStack.Scale(1000, 1000, 1000);
		RenderMesh(meshList[SPACE_TOP], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(0, 0, 0);
		modelStack.Rotate(-180, 0, 1, 0);
		modelStack.Scale(1000, 1000, 1000);
		RenderMesh(meshList[SPACE_BOTTOM], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(-498.75, 49.875, 0);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Rotate(-90, 0, 0, 1);
		modelStack.Scale(1000, 50, 100);
		RenderMesh(meshList[SPACE_LEFT], false);
		modelStack.PopMatrix();

		modelStack.PushMatrix();
		modelStack.Translate(498.75, 49.875, 0);
		modelStack.Rotate(90, 1, 0, 0);
		modelStack.Rotate(90, 0, 0, 1);
		modelStack.Scale(1000, 50, 100);
		RenderMesh(meshList[SPACE_RIGHT], false);
		modelStack.PopMatrix();

	}
	modelStack.PopMatrix();
}

void Indoor4::RenderText(Mesh* mesh, std::string text, Color color)
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

void Indoor4::RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y)
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

int Indoor4::NumberInput()
{
	if (Application::IsKeyPressed('1') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 1;
	}
	else if (Application::IsKeyPressed('2') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 2;
	}
	else if (Application::IsKeyPressed('3') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 3;
	}
	else if (Application::IsKeyPressed('4') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 4;
	}
	else if (Application::IsKeyPressed('5') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 5;
	}
	else if (Application::IsKeyPressed('6') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 6;
	}
	else if (Application::IsKeyPressed('7') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 7;
	}
	else if (Application::IsKeyPressed('8') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 8;
	}
	else if (Application::IsKeyPressed('9') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 9;
	}
	else if (Application::IsKeyPressed('0') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		x = 0;
	}
	return x;
}

void Indoor4::NumberOutput()
{

	if (x == 1)
		RenderTextOnScreen(meshList[GEO_TEXT], "1", Color(0, 1, 0), 2, 28, 28);
	else if (x == 2)
		RenderTextOnScreen(meshList[GEO_TEXT], "2", Color(0, 1, 0), 2, 28, 28);
	else if (x == 3)
		RenderTextOnScreen(meshList[GEO_TEXT], "3", Color(0, 1, 0), 2, 28, 28);
	else if (x == 4)
		RenderTextOnScreen(meshList[GEO_TEXT], "4", Color(0, 1, 0), 2, 28, 28);
	else if (x == 5)
		RenderTextOnScreen(meshList[GEO_TEXT], "5", Color(0, 1, 0), 2, 28, 28);
	else if (x == 6)
		RenderTextOnScreen(meshList[GEO_TEXT], "6", Color(0, 1, 0), 2, 28, 28);
	else if (x == 7)
		RenderTextOnScreen(meshList[GEO_TEXT], "7", Color(0, 1, 0), 2, 28, 28);
	else if (x == 8)
		RenderTextOnScreen(meshList[GEO_TEXT], "8", Color(0, 1, 0), 2, 28, 28);
	else if (x == 9)
		RenderTextOnScreen(meshList[GEO_TEXT], "9", Color(0, 1, 0), 2, 28, 28);
	else if (x == 0)
		RenderTextOnScreen(meshList[GEO_TEXT], "0", Color(0, 1, 0), 2, 28, 28);
}

int Indoor4::NumberInput2()
{

	if (Application::IsKeyPressed('1') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 1;
	}
	else if (Application::IsKeyPressed('2') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 2;
	}
	else if (Application::IsKeyPressed('3') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 3;
	}
	else if (Application::IsKeyPressed('4') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 4;
	}
	else if (Application::IsKeyPressed('5') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 5;
	}
	else if (Application::IsKeyPressed('6') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 6;
	}
	else if (Application::IsKeyPressed('7') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 7;
	}
	else if (Application::IsKeyPressed('8') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 8;
	}
	else if (Application::IsKeyPressed('9') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 9;
	}
	else if (Application::IsKeyPressed('0') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		y = 0;
	}
	return y;
}

void Indoor4::NumberOutput2()
{
	if (y == 1)
		RenderTextOnScreen(meshList[GEO_TEXT], "1", Color(0, 1, 0), 2, 28, 25);
	else if (y == 2)
		RenderTextOnScreen(meshList[GEO_TEXT], "2", Color(0, 1, 0), 2, 28, 25);
	else if (y == 3)
		RenderTextOnScreen(meshList[GEO_TEXT], "3", Color(0, 1, 0), 2, 28, 25);
	else if (y == 4)
		RenderTextOnScreen(meshList[GEO_TEXT], "4", Color(0, 1, 0), 2, 28, 25);
	else if (y == 5)
		RenderTextOnScreen(meshList[GEO_TEXT], "5", Color(0, 1, 0), 2, 28, 25);
	else if (y == 6)
		RenderTextOnScreen(meshList[GEO_TEXT], "6", Color(0, 1, 0), 2, 28, 25);
	else if (y == 7)
		RenderTextOnScreen(meshList[GEO_TEXT], "7", Color(0, 1, 0), 2, 28, 25);
	else if (y == 8)
		RenderTextOnScreen(meshList[GEO_TEXT], "8", Color(0, 1, 0), 2, 28, 25);
	else if (y == 9)
		RenderTextOnScreen(meshList[GEO_TEXT], "9", Color(0, 1, 0), 2, 28, 25);
	else if (y == 0)
		RenderTextOnScreen(meshList[GEO_TEXT], "0", Color(0, 1, 0), 2, 28, 25);
}

int Indoor4::NumberInput3()
{


	if (Application::IsKeyPressed('1') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 1;
	}
	else if (Application::IsKeyPressed('2') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 2;
	}
	else if (Application::IsKeyPressed('3') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 3;
	}
	else if (Application::IsKeyPressed('4') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 4;
	}
	else if (Application::IsKeyPressed('5') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 5;
	}
	else if (Application::IsKeyPressed('6') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 6;
	}
	else if (Application::IsKeyPressed('7') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 7;
	}
	else if (Application::IsKeyPressed('8') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 8;
	}
	else if (Application::IsKeyPressed('9') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 9;
	}
	else if (Application::IsKeyPressed('0') && (elapsedTime > bounceTime))
	{
		bounceTime = elapsedTime + 0.2;
		z = 0;
	}
	return z;
}

void Indoor4::NumberOutput3()
{


	if (z == 1)
		RenderTextOnScreen(meshList[GEO_TEXT], "1", Color(0, 1, 0), 2, 28, 22);
	else if (z == 2)
		RenderTextOnScreen(meshList[GEO_TEXT], "2", Color(0, 1, 0), 2, 28, 22);
	else if (z == 3)
		RenderTextOnScreen(meshList[GEO_TEXT], "3", Color(0, 1, 0), 2, 28, 22);
	else if (z == 4)
		RenderTextOnScreen(meshList[GEO_TEXT], "4", Color(0, 1, 0), 2, 28, 22);
	else if (z == 5)
		RenderTextOnScreen(meshList[GEO_TEXT], "5", Color(0, 1, 0), 2, 28, 22);
	else if (z == 6)
		RenderTextOnScreen(meshList[GEO_TEXT], "6", Color(0, 1, 0), 2, 28, 22);
	else if (z == 7)
		RenderTextOnScreen(meshList[GEO_TEXT], "7", Color(0, 1, 0), 2, 28, 22);
	else if (z == 8)
		RenderTextOnScreen(meshList[GEO_TEXT], "8", Color(0, 1, 0), 2, 28, 22);
	else if (z == 9)
		RenderTextOnScreen(meshList[GEO_TEXT], "9", Color(0, 1, 0), 2, 28, 22);
	else if (z == 0)
		RenderTextOnScreen(meshList[GEO_TEXT], "0", Color(0, 1, 0), 2, 28, 22);
}

void Indoor4::CheckCode()
{
	pass = true;
		if (x == 1 && y == 5 && z == 8)
		{
			passcorrect = true;
			RenderTextOnScreen(meshList[GEO_TEXT], "ACCESS GRANTED", Color(0, 1, 0), 2, 10, 15);
		}
		else
		{
			passwrong = true;
			RenderTextOnScreen(meshList[GEO_TEXT], "ACCESS DENIED", Color(0, 1, 0), 2, 10, 15);
		}
}

void Indoor4::RenderMeshOnScreen(Mesh*mesh, int x, int y, int sizex, int sizey)
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

void Indoor4::Exit()
{
	glDeleteVertexArrays(1, &m_vertexArrayID);
	glDeleteProgram(m_programID);
}
