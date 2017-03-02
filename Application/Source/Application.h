
#ifndef APPLICATION_H
#define APPLICATION_H

//Include GLEW
#include <GL/glew.h>

//Include GLFW
#include <GLFW/glfw3.h>

#include "timer.h"

class Application
{
public:
	Application();
	~Application();
	void Init();
	void Run();
	void Exit();
	void Change();
	static bool IsKeyPressed(unsigned short key);
	static void SetScene(int SceneNo);
	//static void RecordScene(int SceneNo);
	//static int Retry();

	static GLFWwindow* m_window;

private:
	//Declare a window object
	StopWatch m_timer;
};

#endif