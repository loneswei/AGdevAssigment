#ifndef SCENE_TEXT_H
#define SCENE_TEXT_H

#include "Scene.h"
#include "Mtx44.h"
#include "PlayerInfo/PlayerInfo.h"
#include "GroundEntity.h"
#include "FPSCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "GenericEntity.h"
#include "SceneGraph/UpdateTransformation.h"
#include "Enemy\Enemy.h"
#include "Enemy\Zombie.h"
#include "House\house.h"
#include "Enemy\Human.h"
#include "Lua\LuaInterface.h"

class ShaderProgram;
class SceneManager;
class TextEntity;
class Light;
class SceneText : public Scene
{	
public:
	SceneText();
	~SceneText();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();

private:
	//SceneText(SceneManager* _sceneMgr); // This is used to register to SceneManager

	ShaderProgram* currProg;
	CPlayerInfo* playerInfo;
	GroundEntity* groundEntity;
	FPSCamera camera;
	TextEntity* textObj[4];
	Light* lights[2];

	GenericEntity* theCube;
	CEnemy* theEnemy;
	Human* human;
	Zombie* theZombie;
	Zombie* zombie;
	House* theHouse;

	CLuaInterface *lua;
	float timerToSpawnZombie;
	//static SceneText* sInstance; // The pointer to the object that gets registered

	bool gameEnd;
	float timerToWinGame;
	bool createScreen;
};

#endif