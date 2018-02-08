#ifndef APPLICATION_H
#define APPLICATION_H

#include "timer.h"
#include "SceneText.h"
#include "GameStateManagement\IntroState.h"
#include "GameStateManagement\MenuState.h"
#include "GameStateManagement\VictoryState.h"
#include "GameStateManagement\DefeatState.h"
#include "GameStateManagement\ControlsState.h"
#include "GameStateManagement\SettingsState.h"
#include "GameStateManagement\TutorialState.h"

class ShaderProgram;
struct GLFWwindow;

class Application
{
public:
	static Application& GetInstance()
	{
		static Application app;
		return app;
	}
	void Init();
	void Run();
	void Exit();

	void UpdateInput();
	void PostInputUpdate();
	
	static void MouseButtonCallbacks(GLFWwindow* window, int button, int action, int mods);
	static void MouseScrollCallbacks(GLFWwindow* window, double xoffset, double yoffset);

	int GetWindowHeight();
	int GetWindowWidth();
	void SetWindow(int width, int height) { this->m_window_width = width; this->m_window_height = height; }
	bool ResizeWindow;
private:
	Application();
	~Application();

	static bool IsKeyPressed(unsigned short key);
	void InitDisplay(void);

	// Should make these not hard-coded :P
	//const static int m_window_width = 800;
	//const static int m_window_height = 600;
	int m_window_width;
	int m_window_height;

	//Declare a window object
	StopWatch m_timer;

	// Pointer to shader program
	ShaderProgram* currProg;
};

#endif