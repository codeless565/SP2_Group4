
#include "Application.h"


//Include the standard C++ headers
#include <stdio.h>
#include <stdlib.h>

#include "Indoor1.h"
#include "Indoor2.h"
#include "Indoor3.h"
#include "Indoor4.h"
#include "ShipRace.h"
#include "ShipDTP.h"
#include "Menu.h"
#include "Loading.h"
#include "GameOver.h"

const unsigned char FPS = 60; // FPS of this game
const unsigned int frameTime = 1000 / FPS; // time for each frame

static int SceneID;
//static int SceneCurr;

GLFWwindow* Application::m_window = 0;

//Define an error callback
static void error_callback(int error, const char* description)
{
	fputs(description, stderr);
	_fgetchar();
}

//Define the key input callback
static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
	if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GL_TRUE);
}

bool Application::IsKeyPressed(unsigned short key)
{
    return ((GetAsyncKeyState(key) & 0x8001) != 0);
}

Application::Application()
{
}

Application::~Application()
{
}

void resize_callback(GLFWwindow* window, int w, int h)
{
	glViewport(0, 0, w, h); //update opengl the new window size
}

void Application::Init()
{
	//Set the error callback
	glfwSetErrorCallback(error_callback);

	//Initialize GLFW
	if (!glfwInit())
	{
		exit(EXIT_FAILURE);
	}

	//Set the GLFW window creation hints - these are optional
	glfwWindowHint(GLFW_SAMPLES, 4); //Request 4x antialiasing
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); //Request a specific OpenGL version
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3); //Request a specific OpenGL version
	//glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //We don't want the old OpenGL 


	//Create a window and create its OpenGL context
	m_window = glfwCreateWindow(800, 600, "Computer Graphics", NULL, NULL);

	//If the window couldn't be created
	if (!m_window)
	{
		fprintf( stderr, "Failed to open GLFW window.\n" );
		glfwTerminate();
		exit(EXIT_FAILURE);
	}
	glfwSetWindowSizeCallback(m_window, resize_callback);

	//This function makes the context of the specified window current on the calling thread. 
	glfwMakeContextCurrent(m_window);

	//Sets the key callback
	//glfwSetKeyCallback(m_window, key_callback);

	glewExperimental = true; // Needed for core profile
	//Initialize GLEW
	GLenum err = glewInit();

	//If GLEW hasn't initialized
	if (err != GLEW_OK) 
	{
		fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
		//return -1;
	}
}

void Application::SetScene(int sceneNo)
{
	SceneID = sceneNo;
}

//void Application::RecordScene(int sceneNo)
//{
//	SceneCurr = sceneNo;
//}

//int Application::Retry()
//{
//	return SceneCurr;
//}

void Application::Run()
{
	//Main Loop
	//SceneID = 1;
	Scene *scene1 = new Menu();
	Scene *scene2 = new Loading();
	Scene *scene3 = new Indoor1();
	Scene *scene4 = new Indoor2();
	Scene *scene5 = new Indoor3();
	Scene *scene6 = new Indoor4();
	Scene *scene7 = new ShipRace();
	Scene *scene8 = new SHIPDTP();
	Scene *scene9 = new GameOver();
	Scene *scene = scene8;
	SceneID = 8;

	scene->Init();

	m_timer.startTimer();    // Start timer to calculate how long it takes to render this frame
	while (!glfwWindowShouldClose(m_window) && !IsKeyPressed(VK_ESCAPE))
	{
		if (SceneID == 1 && scene != scene1)
		{
			scene->Exit();
			scene = scene1;
			scene->Init();
		}
		else if (SceneID == 2 && scene != scene2)
		{
			scene->Exit();
			scene = scene2;
			scene->Init();
		}
		else if (SceneID == 3 && scene != scene3)
		{
			scene->Exit();
			scene = scene3;
			scene->Init();
		}
		else if (SceneID == 4 && scene != scene4)
		{
			scene->Exit();
			scene = scene4;
			scene->Init();
		}
		else if (SceneID == 5 && scene != scene5)
		{
			scene = scene4;
		}
		else if (SceneID == 6 && scene != scene6)
		{
			scene->Exit();
			scene = scene6;
			scene->Init();
		}
		else if (SceneID == 7 && scene != scene7)
		{
			scene->Exit();
			scene = scene7;
			scene->Init();
		}
		else if (SceneID == 8 && scene != scene8)
		{
			scene->Exit();
			scene = scene8;
			scene->Init();
		}
		else if (SceneID == 9 && scene != scene9)
		{
			scene->Exit();
			scene = scene9;
			scene->Init();
		}

		scene->Update(m_timer.getElapsedTime());
		scene->Render();
		//Swap buffers
		glfwSwapBuffers(m_window);
		//Get and organize events, like keyboard and mouse input, window resizing, etc...
		glfwPollEvents();
        m_timer.waitUntil(frameTime);       // Frame rate limiter. Limits each frame to a specified time in ms.   

	} //Check if the ESC key had been pressed or if the window had been closed
	
	//exit all scene then delete
	scene1->Exit();
	scene2->Exit();
	delete scene1;
	delete scene2;
}

void Application::Exit()
{
	//Close OpenGL window and terminate GLFW
	glfwDestroyWindow(m_window);
	//Finalize and clean up GLFW
	glfwTerminate();
}
