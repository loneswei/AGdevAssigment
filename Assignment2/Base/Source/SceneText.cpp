#include "SceneText.h"
#include "GL\glew.h"

#include "shader.hpp"
#include "MeshBuilder.h"
#include "Application.h"
#include "Utility.h"
#include "LoadTGA.h"
#include <sstream>
#include "KeyboardController.h"
#include "MouseController.h"
#include "SceneManager.h"
#include "GraphicsManager.h"
#include "ShaderProgram.h"
#include "EntityManager.h"

#include "GenericEntity.h"
#include "GroundEntity.h"
#include "TextEntity.h"
#include "SpriteEntity.h"
#include "Light.h"
#include "SkyBox/SkyBoxEntity.h"
#include "SceneGraph\SceneGraph.h"
#include "SpatialPartition\SpatialPartition.h"
#include "Waypoint\WaypointManager.h"

#include <iostream>
using namespace std;


SceneText::SceneText()
{
}


SceneText::~SceneText()
{
	CSpatialPartition::GetInstance()->RemoveCamera();
	CSceneGraph::GetInstance()->Destroy();
}

void SceneText::Init()
{
	Math::InitRNG();
	lua = CLuaInterface::GetInstance();
	
	// Create the playerinfo instance, which manages all information about the player
	playerInfo = CPlayerInfo::GetInstance();
	CSceneGraph::GetInstance()->AddNode(playerInfo);
	playerInfo->Init();

	// Create and attach the camera to the scene
	//camera.Init(Vector3(0, 0, 10), Vector3(0, 0, 0), Vector3(0, 1, 0));
	camera.Init(playerInfo->GetPos(), playerInfo->GetTarget(), playerInfo->GetUp());
	playerInfo->AttachCamera(&camera);
	GraphicsManager::GetInstance()->AttachCamera(&camera);

	// Load all the meshes
	MeshBuilder::GetInstance()->GenerateAxes("reference");
	MeshBuilder::GetInstance()->GenerateCrossHair("crosshair");
	MeshBuilder::GetInstance()->GenerateQuad("quad", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GetMesh("quad")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "calibri"));
	MeshBuilder::GetInstance()->GenerateText("text", 16, 16);
	MeshBuilder::GetInstance()->GetMesh("text")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "calibri"));
	MeshBuilder::GetInstance()->GetMesh("text")->material.kAmbient.Set(1, 0, 0);
	MeshBuilder::GetInstance()->GenerateOBJ("Chair", "OBJ//chair.obj");
	MeshBuilder::GetInstance()->GetMesh("Chair")->textureID = LoadTGA("Image//chair.tga");
	MeshBuilder::GetInstance()->GenerateRing("ring", Color(1, 0, 1), 36, 1, 0.5f);
	MeshBuilder::GetInstance()->GenerateSphere("lightball", Color(1, 1, 1), 18, 36, 1.f);
	MeshBuilder::GetInstance()->GenerateSphere("sphere", Color(1, 0, 0), 18, 36, 0.5f);
	MeshBuilder::GetInstance()->GenerateCone("cone", Color(0.5f, 1, 0.3f), 36, 10.f, 10.f);
	MeshBuilder::GetInstance()->GenerateCube("cube", Color(1.0f, 1.0f, 0.0f), 1.0f);
	MeshBuilder::GetInstance()->GetMesh("cone")->material.kDiffuse.Set(0.99f, 0.99f, 0.99f);
	MeshBuilder::GetInstance()->GetMesh("cone")->material.kSpecular.Set(0.f, 0.f, 0.f);
	MeshBuilder::GetInstance()->GenerateQuad("GRASS_DARKGREEN", Color(0.325f, 0.325f, 0.325f), 1.f);
	//MeshBuilder::GetInstance()->GetMesh("GRASS_DARKGREEN")->textureID = LoadTGA("Image//grass_darkgreen.tga");
	MeshBuilder::GetInstance()->GenerateQuad("GEO_GRASS_LIGHTGREEN", Color(0.35f, 0.35f, 0.35f), 1.f);
	//MeshBuilder::GetInstance()->GetMesh("GEO_GRASS_LIGHTGREEN")->textureID = LoadTGA("Image//grass_lightgreen.tga");
	MeshBuilder::GetInstance()->GenerateCube("cubeSG", Color(1.0f, 0.64f, 0.0f), 1.0f);

	// Skybox
	MeshBuilder::GetInstance()->GenerateQuad("SKYBOX_FRONT", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GenerateQuad("SKYBOX_BACK", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GenerateQuad("SKYBOX_LEFT", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GenerateQuad("SKYBOX_RIGHT", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GenerateQuad("SKYBOX_TOP", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GenerateQuad("SKYBOX_BOTTOM", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_FRONT")->textureID = LoadTGA(lua ->getStringValue(lua->theImageState, "skyboxfront"));
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_BACK")->textureID = LoadTGA(lua->getStringValue(lua->theImageState,"skyboxback"));
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_LEFT")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "skyboxleft"));
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_RIGHT")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "skyboxright"));
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_TOP")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "skyboxtop"));
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_BOTTOM")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "skyboxbottom"));

	// Laser and Grid
	MeshBuilder::GetInstance()->GenerateRay("laser", 10.0f);
	MeshBuilder::GetInstance()->GenerateQuad("GRIDMESH", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GenerateQuad("RED_GRIDMESH", Color(1, 0, 0), 1.f);

	// Car
	MeshBuilder::GetInstance()->GenerateOBJ("carlow", lua->getStringValue(lua->theObjectState, "carlow"));
	MeshBuilder::GetInstance()->GetMesh("carlow")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "car"));
	MeshBuilder::GetInstance()->GenerateOBJ("carmed", lua->getStringValue(lua->theObjectState, "carmed"));
	MeshBuilder::GetInstance()->GetMesh("carmed")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "car"));
	MeshBuilder::GetInstance()->GenerateOBJ("carhigh", lua->getStringValue(lua->theObjectState, "carhigh"));
	MeshBuilder::GetInstance()->GetMesh("carhigh")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "car"));

	// Zombie
	MeshBuilder::GetInstance()->GenerateOBJ("zombiehead", lua->getStringValue(lua->theObjectState, "zombiehead"));
	MeshBuilder::GetInstance()->GetMesh("zombiehead")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "zombie"));
	MeshBuilder::GetInstance()->GenerateOBJ("zombiearm", lua->getStringValue(lua->theObjectState, "zombiearm"));
	MeshBuilder::GetInstance()->GetMesh("zombiearm")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "zombie"));
	MeshBuilder::GetInstance()->GenerateOBJ("zombiebody", lua->getStringValue(lua->theObjectState, "zombiebody"));
	MeshBuilder::GetInstance()->GetMesh("zombiebody")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "zombie"));
	MeshBuilder::GetInstance()->GenerateOBJ("zombiehorse", lua->getStringValue(lua->theObjectState, "horse"));
	MeshBuilder::GetInstance()->GetMesh("zombiehorse")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "horse"));

	// House
	MeshBuilder::GetInstance()->GenerateOBJ("houseroof", lua->getStringValue(lua->theObjectState, "houseroof"));
	MeshBuilder::GetInstance()->GetMesh("houseroof")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "houselow"));
	MeshBuilder::GetInstance()->GenerateOBJ("houseleftwall", lua->getStringValue(lua->theObjectState, "houseleftwall"));
	MeshBuilder::GetInstance()->GetMesh("houseleftwall")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "houselow"));
	MeshBuilder::GetInstance()->GenerateOBJ("housebackwall", lua->getStringValue(lua->theObjectState, "housebackwall"));
	MeshBuilder::GetInstance()->GetMesh("housebackwall")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "houselow"));
	MeshBuilder::GetInstance()->GenerateOBJ("houserightwall", lua->getStringValue(lua->theObjectState, "houserightwall"));
	MeshBuilder::GetInstance()->GetMesh("houserightwall")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "houselow"));
	MeshBuilder::GetInstance()->GenerateOBJ("housefrontwall", "OBJ//LOD//housefrontwall.obj");
	MeshBuilder::GetInstance()->GetMesh("housefrontwall")->textureID = LoadTGA("Image//LOD//househigh.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("houselowdoor", lua->getStringValue(lua->theObjectState, "housedoor"));
	MeshBuilder::GetInstance()->GetMesh("houselowdoor")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "houselow"));
	MeshBuilder::GetInstance()->GenerateOBJ("housemeddoor", lua->getStringValue(lua->theObjectState, "housedoor"));
	MeshBuilder::GetInstance()->GetMesh("housemeddoor")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "housemed"));
	MeshBuilder::GetInstance()->GenerateOBJ("househighdoor", lua->getStringValue(lua->theObjectState, "housedoor"));
	MeshBuilder::GetInstance()->GetMesh("househighdoor")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "househigh"));

	// Human
	MeshBuilder::GetInstance()->GenerateOBJ("humanlow", lua->getStringValue(lua->theObjectState, "humanlow"));
	MeshBuilder::GetInstance()->GetMesh("humanlow")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "humanmed"));
	MeshBuilder::GetInstance()->GenerateOBJ("humanmed", lua->getStringValue(lua->theObjectState, "humanmed"));
	MeshBuilder::GetInstance()->GetMesh("humanmed")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "humanmed"));
	MeshBuilder::GetInstance()->GenerateOBJ("humanhigh", lua->getStringValue(lua->theObjectState, "humanhigh"));
	MeshBuilder::GetInstance()->GetMesh("humanhigh")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "humanhigh"));

	// Lamp post
	MeshBuilder::GetInstance()->GenerateOBJ("lamppostlow", lua->getStringValue(lua->theObjectState, "lamppostlow"));
	MeshBuilder::GetInstance()->GetMesh("lamppostlow")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "lamppost"));
	MeshBuilder::GetInstance()->GenerateOBJ("lamppostmed", lua->getStringValue(lua->theObjectState, "lamppostmed"));
	MeshBuilder::GetInstance()->GetMesh("lamppostmed")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "lamppost"));
	MeshBuilder::GetInstance()->GenerateOBJ("lampposthigh", lua->getStringValue(lua->theObjectState, "lampposthigh"));
	MeshBuilder::GetInstance()->GetMesh("lampposthigh")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "lamppost"));

	// Tree
	MeshBuilder::GetInstance()->GenerateOBJ("treelow", lua->getStringValue(lua->theObjectState, "treelow"));
	MeshBuilder::GetInstance()->GetMesh("treelow")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "treehigh"));
	MeshBuilder::GetInstance()->GenerateOBJ("treemed", lua->getStringValue(lua->theObjectState, "treehigh"));
	MeshBuilder::GetInstance()->GetMesh("treemed")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "treehigh"));
	MeshBuilder::GetInstance()->GenerateOBJ("treehigh", lua->getStringValue(lua->theObjectState, "treehigh"));
	MeshBuilder::GetInstance()->GetMesh("treehigh")->textureID = LoadTGA(lua->getStringValue(lua->theImageState, "treemed"));

	// Win / Lose Screen

	// Set up the Spatial Partition and pass it to the EntityManager to manage
	CSpatialPartition::GetInstance()->Init(lua->getIntValue(lua->theSpatialState, "xgridsize"), lua->getIntValue(lua->theSpatialState, "zgridsize"),
		lua->getIntValue(lua->theSpatialState, "xnumgrid"), lua->getIntValue(lua->theSpatialState, "zgridsize"));
	CSpatialPartition::GetInstance()->SetMesh("GRIDMESH");
	CSpatialPartition::GetInstance()->SetCamera(&camera);
	CSpatialPartition::GetInstance()->SetLevelOfDetails(lua->getIntValue(lua->theSpatialState, "highmiddist"), lua->getIntValue(lua->theSpatialState, "midlowdist"));
	EntityManager::GetInstance()->SetSpatialPartition(CSpatialPartition::GetInstance());

	// Create entities into the scene
	//Create::Entity("reference", Vector3(0.0f, 0.0f, 0.0f)); // Reference
	//Create::Entity("lightball", Vector3(lights[0]->position.x, lights[0]->position.y, lights[0]->position.z)); // Lightball

	{
		Vector3 housePos = lua->getVector3Values(lua->theEnvironmentInfoState, "housePos");
		theHouse = new House();
		theHouse->Init(housePos);
	}

	lua_getglobal(lua->theLuaState, "Waypoint_A_1");
	int aWayPoint = CWaypointManager::GetInstance()->AddWaypoint(Vector3(lua->GetField("x"), lua->GetField("y"), lua->GetField("z")));

	lua_getglobal(lua->theLuaState, "Waypoint_A_2");
	int anotherWaypoint = CWaypointManager::GetInstance()->AddWaypoint(aWayPoint, Vector3(lua->GetField("x"), lua->GetField("y"), lua->GetField("z")));

	lua_getglobal(lua->theLuaState, "Waypoint_A_3");
	CWaypointManager::GetInstance()->AddWaypoint(anotherWaypoint, Vector3(lua->GetField("x"), lua->GetField("y"), lua->GetField("z")));

	CWaypointManager::GetInstance()->PrintSelf();

	human = new Human();
	human->Init();
	CSceneGraph::GetInstance()->AddNode(human);

	GenericEntity* lampPost = Create::Entity("lamppostmed", lua->getVector3Values(lua->theEnvironmentInfoState, "lampPos"), Vector3(5, 5, 5));
	lampPost->InitLOD("lampposthigh", "lamppostmed", "lamppostlow");
	lampPost->SetCollider(true);
	lampPost->SetAABB(Vector3(2, 15, 2), Vector3(-2, -15, -2));
	CSceneGraph::GetInstance()->AddNode(lampPost);

	GenericEntity* tree = Create::Entity("treemed", lua->getVector3Values(lua->theEnvironmentInfoState, "treePos"), Vector3(5, 5, 5));
	tree->InitLOD("treehigh", "treemed", "treelow");
	tree->SetCollider(true);
	tree->SetAABB(Vector3(3, 21.5f, 3), Vector3(-3, -21.5f, -3));
	CSceneGraph::GetInstance()->AddNode(tree);

	GenericEntity* car = Create::Entity("carmed", lua->getVector3Values(lua->theEnvironmentInfoState, "carPos"), Vector3(5, 5, 5));
	car->InitLOD("carhigh", "carmed", "carlow");
	car->SetCollider(true);
	car->SetAABB(Vector3(12, 5.5f, 25), Vector3(-12, -5.5f, -25));
	CSceneGraph::GetInstance()->AddNode(car);

	groundEntity = Create::Ground("GRASS_DARKGREEN", "GEO_GRASS_LIGHTGREEN");
//	Create::Text3DObject("text", Vector3(0.0f, 0.0f, 0.0f), "DM2210", Vector3(10.0f, 10.0f, 10.0f), Color(0, 1, 1));
	Create::Sprite2DObject("crosshair", Vector3(0.0f, 0.0f, 0.0f), Vector3(10.0f, 10.0f, 10.0f));

	SkyBoxEntity* theSkyBox = Create::SkyBox("SKYBOX_FRONT", "SKYBOX_BACK",
											 "SKYBOX_LEFT", "SKYBOX_RIGHT",
											 "SKYBOX_TOP", "SKYBOX_BOTTOM");

	// Customise the ground entity
	groundEntity->SetPosition(Vector3(0, -10, 0));
	groundEntity->SetScale(Vector3(100.0f, 100.0f, 100.0f));
	groundEntity->SetGrids(Vector3(10.0f, 1.0f, 10.0f));
	playerInfo->SetTerrain(groundEntity);

	// Setup the 2D entities
	float halfWindowWidth = Application::GetInstance().GetWindowWidth() / 2.0f;
	float halfWindowHeight = Application::GetInstance().GetWindowHeight() / 2.0f;
	float fontSize = 25.0f;
	float halfFontSize = fontSize / 2.0f;
	for (int i = 0; i < 4; ++i)
	{
		textObj[i] = Create::Text2DObject("text", Vector3(-halfWindowWidth, -halfWindowHeight + fontSize*i + halfFontSize, 0.0f), "", Vector3(fontSize, fontSize, fontSize), Color(0.0f,1.0f,0.0f));
	}
	textObj[0]->SetText("HELLO WORLD");

	//gameplay
	gameEnd = false;
}

void SceneText::Update(double dt)
{
	
		// Update our entities
		EntityManager::GetInstance()->Update(dt);

		// THIS WHOLE CHUNK TILL <THERE> CAN REMOVE INTO ENTITIES LOGIC! Or maybe into a scene function to keep the update clean
		if (KeyboardController::GetInstance()->IsKeyDown('1'))
			glEnable(GL_CULL_FACE);
		if (KeyboardController::GetInstance()->IsKeyDown('2'))
			glDisable(GL_CULL_FACE);
		if (KeyboardController::GetInstance()->IsKeyDown('3'))
			glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
		if (KeyboardController::GetInstance()->IsKeyDown('4'))
			glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

		//if (KeyboardController::GetInstance()->IsKeyDown('5'))
		//	lights[0]->type = Light::LIGHT_POINT;
		//else if (KeyboardController::GetInstance()->IsKeyDown('6'))
		//	lights[0]->type = Light::LIGHT_DIRECTIONAL;
		//else if (KeyboardController::GetInstance()->IsKeyDown('7'))
		//	lights[0]->type = Light::LIGHT_SPOT;

		//if (KeyboardController::GetInstance()->IsKeyDown('I'))
		//	lights[0]->position.z -= (float)(10.f * dt);
		//if (KeyboardController::GetInstance()->IsKeyDown('K'))
		//	lights[0]->position.z += (float)(10.f * dt);
		//if (KeyboardController::GetInstance()->IsKeyDown('J'))
		//	lights[0]->position.x -= (float)(10.f * dt);
		//if (KeyboardController::GetInstance()->IsKeyDown('L'))
		//	lights[0]->position.x += (float)(10.f * dt);
		//if (KeyboardController::GetInstance()->IsKeyDown('O'))
		//	lights[0]->position.y -= (float)(10.f * dt);
		//if (KeyboardController::GetInstance()->IsKeyDown('P'))
		//	lights[0]->position.y += (float)(10.f * dt);

		if (KeyboardController::GetInstance()->IsKeyReleased('M'))
		{
			CSceneNode* theNode = CSceneGraph::GetInstance()->GetNode(1);
			Vector3 pos = theNode->GetEntity()->GetPosition();
			theNode->GetEntity()->SetPosition(Vector3(pos.x + 50.0f, pos.y, pos.z + 50.0f));
		}
		if (KeyboardController::GetInstance()->IsKeyReleased('N'))
			CSpatialPartition::GetInstance()->PrintSelf();

		// if the left mouse button was released
		//if (MouseController::GetInstance()->IsButtonReleased(MouseController::LMB))
		//	cout << "Left Mouse Button was released!" << endl;
		//if (MouseController::GetInstance()->IsButtonReleased(MouseController::RMB))
		//	cout << "Right Mouse Button was released!" << endl;
		//if (MouseController::GetInstance()->IsButtonReleased(MouseController::MMB))
		//	cout << "Middle Mouse Button was released!" << endl;
		//if (MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_XOFFSET) != 0.0)
		//	cout << "Mouse Wheel has offset in X-axis of " << MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_XOFFSET) << endl;
		//if (MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_YOFFSET) != 0.0)
		//	cout << "Mouse Wheel has offset in Y-axis of " << MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_YOFFSET) << endl;
		// <THERE>

		// Update the player position and other details based on keyboard and mouse inputs
		playerInfo->Update(dt);

		// spawn zombie every 5 seconds
		//timerToSpawnZombie += (float)dt;
		//if (timerToSpawnZombie > 5.0f)
		//{
		//	theZombie = new Zombie();
		//	theZombie->Init();	// zombie will be added into entitylist in Init(), so dunneed call update
		//	theZombie->SetTerrain(groundEntity); 
		//	timerToSpawnZombie -= 5.0f;
		//}

		GraphicsManager::GetInstance()->UpdateLights(dt);

	// show postgame screen based on outcome
	if (gameEnd)
	{
		if (playerInfo->GetPlayerLose())
			SceneManager::GetInstance()->SetActiveScene("DefeatState");
		else
			SceneManager::GetInstance()->SetActiveScene("VictoryState");
	}

	// Update the 2 text object values.
	std::ostringstream ss;
	ss.precision(5);
	float fps = (float)(1.f / dt);
	ss << "FPS: " << fps;
	textObj[1]->SetText(ss.str());

	ss.str("");
	ss.precision(4);
	ss << "Player:" << playerInfo->GetPos();
	textObj[2]->SetText(ss.str());

	ss.str("");
	ss << "Score:" << playerInfo->GetScore();
	textObj[3]->SetText(ss.str());

	ss.str("");
	ss.precision(4);
	ss << "Timer: " << (30 - timerToWinGame);
	//ss << "Spatial: " << CPlayerInfo::GetInstance()->spActive;
	textObj[0]->SetText(ss.str());
}

void SceneText::Render()
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	GraphicsManager::GetInstance()->UpdateLightUniforms();

	// Setup 3D pipeline then render 3D
	GraphicsManager::GetInstance()->SetPerspectiveProjection(45.0f, 4.0f / 3.0f, 0.1f, 10000.0f);
	GraphicsManager::GetInstance()->AttachCamera(&camera);
	EntityManager::GetInstance()->Render();

	// Setup 2D pipeline then render 2D
	int halfWindowWidth = Application::GetInstance().GetWindowWidth() / 2;
	int halfWindowHeight = Application::GetInstance().GetWindowHeight() / 2;
	GraphicsManager::GetInstance()->SetOrthographicProjection(-halfWindowWidth, halfWindowWidth, -halfWindowHeight, halfWindowHeight, -10, 10);
	GraphicsManager::GetInstance()->DetachCamera();
	EntityManager::GetInstance()->RenderUI();
}

void SceneText::Exit()
{
	// Detach camera from other entities
	GraphicsManager::GetInstance()->DetachCamera();
	playerInfo->DetachCamera();

	if (playerInfo->DropInstance() == false)
	{
#if _DEBUGMODE==1
		cout << "Unable to drop PlayerInfo class" << endl;
#endif
	}

	// Delete the lights
	//delete lights[0];
	//delete lights[1];

	theHouse->SetIsDone(true);
	human->SetIsDone(true);
	groundEntity->SetIsDone(true);
	timerToSpawnZombie = 0.0f;
	gameEnd = false;
	timerToWinGame = 0.0f;
	createScreen = false;
	EntityManager::GetInstance()->Destroy();
	//CSpatialPartition::GetInstance()->DropInstance();
	CSpatialPartition::GetInstance()->RemoveCamera();
	CSceneGraph::GetInstance()->Destroy();
}
