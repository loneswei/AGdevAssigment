#pragma once

#include "Scene.h"
#include "Mtx44.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "../FPSCamera.h"
#include "../SpriteEntity.h"
#include "../Lua/LuaInterface.h"

class SceneManager;

class CSettingsState : public Scene
{
public:
	CSettingsState();
	~CSettingsState();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();

private:
	FPSCamera camera;
	SpriteEntity* SettingsStateBackGround;

};