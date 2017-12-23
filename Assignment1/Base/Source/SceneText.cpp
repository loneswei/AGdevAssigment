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

#include <iostream>
using namespace std;

SceneText* SceneText::sInstance = new SceneText(SceneManager::GetInstance());

SceneText::SceneText()
{
}

SceneText::SceneText(SceneManager* _sceneMgr)
{
	_sceneMgr->AddScene("Start", this);
}

SceneText::~SceneText()
{
	CSpatialPartition::GetInstance()->RemoveCamera();
	CSceneGraph::GetInstance()->Destroy();
}

void SceneText::Init()
{
	currProg = GraphicsManager::GetInstance()->LoadShader("default", "Shader//Texture.vertexshader", "Shader//Texture.fragmentshader");
	
	Math::InitRNG();

	// Tell the shader program to store these uniform locations
	currProg->AddUniform("MVP");
	currProg->AddUniform("MV");
	currProg->AddUniform("MV_inverse_transpose");
	currProg->AddUniform("material.kAmbient");
	currProg->AddUniform("material.kDiffuse");
	currProg->AddUniform("material.kSpecular");
	currProg->AddUniform("material.kShininess");
	currProg->AddUniform("lightEnabled");
	currProg->AddUniform("numLights");
	currProg->AddUniform("lights[0].type");
	currProg->AddUniform("lights[0].position_cameraspace");
	currProg->AddUniform("lights[0].color");
	currProg->AddUniform("lights[0].power");
	currProg->AddUniform("lights[0].kC");
	currProg->AddUniform("lights[0].kL");
	currProg->AddUniform("lights[0].kQ");
	currProg->AddUniform("lights[0].spotDirection");
	currProg->AddUniform("lights[0].cosCutoff");
	currProg->AddUniform("lights[0].cosInner");
	currProg->AddUniform("lights[0].exponent");
	currProg->AddUniform("lights[1].type");
	currProg->AddUniform("lights[1].position_cameraspace");
	currProg->AddUniform("lights[1].color");
	currProg->AddUniform("lights[1].power");
	currProg->AddUniform("lights[1].kC");
	currProg->AddUniform("lights[1].kL");
	currProg->AddUniform("lights[1].kQ");
	currProg->AddUniform("lights[1].spotDirection");
	currProg->AddUniform("lights[1].cosCutoff");
	currProg->AddUniform("lights[1].cosInner");
	currProg->AddUniform("lights[1].exponent");
	currProg->AddUniform("colorTextureEnabled");
	currProg->AddUniform("colorTexture");
	currProg->AddUniform("textEnabled");
	currProg->AddUniform("textColor");
	
	// Tell the graphics manager to use the shader we just loaded
	GraphicsManager::GetInstance()->SetActiveShader("default");

	lights[0] = new Light();
	GraphicsManager::GetInstance()->AddLight("lights[0]", lights[0]);
	lights[0]->type = Light::LIGHT_DIRECTIONAL;
	lights[0]->position.Set(0, 20, 0);
	lights[0]->color.Set(1, 1, 1);
	lights[0]->power = 1;
	lights[0]->kC = 1.f;
	lights[0]->kL = 0.01f;
	lights[0]->kQ = 0.001f;
	lights[0]->cosCutoff = cos(Math::DegreeToRadian(45));
	lights[0]->cosInner = cos(Math::DegreeToRadian(30));
	lights[0]->exponent = 3.f;
	lights[0]->spotDirection.Set(0.f, 1.f, 0.f);
	lights[0]->name = "lights[0]";

	lights[1] = new Light();
	GraphicsManager::GetInstance()->AddLight("lights[1]", lights[1]);
	lights[1]->type = Light::LIGHT_DIRECTIONAL;
	lights[1]->position.Set(1, 1, 0);
	lights[1]->color.Set(1, 1, 0.5f);
	lights[1]->power = 0.4f;
	lights[1]->name = "lights[1]";

	currProg->UpdateInt("numLights", 1);
	currProg->UpdateInt("textEnabled", 0);
	
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
	MeshBuilder::GetInstance()->GetMesh("quad")->textureID = LoadTGA("Image//calibri.tga");
	MeshBuilder::GetInstance()->GenerateText("text", 16, 16);
	MeshBuilder::GetInstance()->GetMesh("text")->textureID = LoadTGA("Image//calibri.tga");
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
	MeshBuilder::GetInstance()->GenerateQuad("GRASS_DARKGREEN", Color(0.3f, 0.3f, 0.3f), 1.f);
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
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_FRONT")->textureID = LoadTGA("Image//SkyBox//skybox_front.tga");
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_BACK")->textureID = LoadTGA("Image//SkyBox//skybox_back.tga");
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_LEFT")->textureID = LoadTGA("Image//SkyBox//skybox_left.tga");
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_RIGHT")->textureID = LoadTGA("Image//SkyBox//skybox_right.tga");
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_TOP")->textureID = LoadTGA("Image//SkyBox//skybox_top.tga");
	MeshBuilder::GetInstance()->GetMesh("SKYBOX_BOTTOM")->textureID = LoadTGA("Image//SkyBox//skybox_bottom.tga");

	// Laser and Grid
	MeshBuilder::GetInstance()->GenerateRay("laser", 10.0f);
	MeshBuilder::GetInstance()->GenerateQuad("GRIDMESH", Color(1, 1, 1), 10.f);
	MeshBuilder::GetInstance()->GenerateQuad("RED_GRIDMESH", Color(1, 0, 0), 1.f);

	// Car
	MeshBuilder::GetInstance()->GenerateOBJ("carlow", "OBJ//LOD//carlow.obj");
	MeshBuilder::GetInstance()->GetMesh("carlow")->textureID = LoadTGA("Image//LOD//carlow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("carmed", "OBJ//LOD//carmed.obj");
	MeshBuilder::GetInstance()->GetMesh("carmed")->textureID = LoadTGA("Image//LOD//carlow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("carhigh", "OBJ//LOD//carhigh.obj");
	MeshBuilder::GetInstance()->GetMesh("carhigh")->textureID = LoadTGA("Image//LOD//carlow.tga");

	// Zombie
	MeshBuilder::GetInstance()->GenerateOBJ("zombiehead", "OBJ//zombiehead.obj");
	MeshBuilder::GetInstance()->GetMesh("zombiehead")->textureID = LoadTGA("Image//zombie.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("zombiearm", "OBJ//zombiearm.obj");
	MeshBuilder::GetInstance()->GetMesh("zombiearm")->textureID = LoadTGA("Image//zombie.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("zombiebody", "OBJ//zombiebody.obj");
	MeshBuilder::GetInstance()->GetMesh("zombiebody")->textureID = LoadTGA("Image//zombie.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("zombiehorse", "OBJ//horse.obj");
	MeshBuilder::GetInstance()->GetMesh("zombiehorse")->textureID = LoadTGA("Image//horse.tga");

	// House
	MeshBuilder::GetInstance()->GenerateOBJ("houseroof", "OBJ//LOD//houseroof.obj");
	MeshBuilder::GetInstance()->GetMesh("houseroof")->textureID = LoadTGA("Image//LOD//houselow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("houseleftwall", "OBJ//LOD//houseleftwall.obj");
	MeshBuilder::GetInstance()->GetMesh("houseleftwall")->textureID = LoadTGA("Image//LOD//houselow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("housebackwall", "OBJ//LOD//housebackwall.obj");
	MeshBuilder::GetInstance()->GetMesh("housebackwall")->textureID = LoadTGA("Image//LOD//houselow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("houserightwall", "OBJ//LOD//houserightwall.obj");
	MeshBuilder::GetInstance()->GetMesh("houserightwall")->textureID = LoadTGA("Image//LOD//houselow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("housefrontwall", "OBJ//LOD//housefrontwall.obj");
	MeshBuilder::GetInstance()->GetMesh("housefrontwall")->textureID = LoadTGA("Image//LOD//househigh.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("houselowdoor", "OBJ//LOD//housedoor.obj");
	MeshBuilder::GetInstance()->GetMesh("houselowdoor")->textureID = LoadTGA("Image//LOD//houselow.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("housemeddoor", "OBJ//LOD//housedoor.obj");
	MeshBuilder::GetInstance()->GetMesh("housemeddoor")->textureID = LoadTGA("Image//LOD//housemed.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("househighdoor", "OBJ//LOD//housedoor.obj");
	MeshBuilder::GetInstance()->GetMesh("househighdoor")->textureID = LoadTGA("Image//LOD//househigh.tga");

	// Human
	MeshBuilder::GetInstance()->GenerateOBJ("humanlow", "OBJ//LOD//humanlow.obj");
	MeshBuilder::GetInstance()->GetMesh("humanlow")->textureID = LoadTGA("Image//LOD//humanmed.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("humanmed", "OBJ//LOD//humanmed.obj");
	MeshBuilder::GetInstance()->GetMesh("humanmed")->textureID = LoadTGA("Image//LOD//humanmed.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("humanhigh", "OBJ//LOD//humanhigh.obj");
	MeshBuilder::GetInstance()->GetMesh("humanhigh")->textureID = LoadTGA("Image//LOD//humanhigh.tga");

	// Lamp post
	MeshBuilder::GetInstance()->GenerateOBJ("lamppostlow", "OBJ//LOD//lamppostlow.obj");
	MeshBuilder::GetInstance()->GetMesh("lamppostlow")->textureID = LoadTGA("Image//LOD//lampposthigh.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("lamppostmed", "OBJ//LOD//lamppostmed.obj");
	MeshBuilder::GetInstance()->GetMesh("lamppostmed")->textureID = LoadTGA("Image//LOD//lampposthigh.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("lampposthigh", "OBJ//LOD//lampposthigh.obj");
	MeshBuilder::GetInstance()->GetMesh("lampposthigh")->textureID = LoadTGA("Image//LOD//lampposthigh.tga");

	// Tree
	MeshBuilder::GetInstance()->GenerateOBJ("treelow", "OBJ//LOD//treelow.obj");
	MeshBuilder::GetInstance()->GetMesh("treelow")->textureID = LoadTGA("Image//LOD//treehigh.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("treemed", "OBJ//LOD//treehigh.obj");
	MeshBuilder::GetInstance()->GetMesh("treemed")->textureID = LoadTGA("Image//LOD//treehigh.tga");
	MeshBuilder::GetInstance()->GenerateOBJ("treehigh", "OBJ//LOD//treehigh.obj");
	MeshBuilder::GetInstance()->GetMesh("treehigh")->textureID = LoadTGA("Image//LOD//treemed.tga");

	// Win / Lose Screen
	MeshBuilder::GetInstance()->GenerateQuad("win", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GetMesh("win")->textureID = LoadTGA("Image//win.tga");
	MeshBuilder::GetInstance()->GenerateQuad("lose", Color(1, 1, 1), 1.f);
	MeshBuilder::GetInstance()->GetMesh("lose")->textureID = LoadTGA("Image//lose.tga");

	// Set up the Spatial Partition and pass it to the EntityManager to manage
	CSpatialPartition::GetInstance()->Init(100, 100, 10, 10);
	CSpatialPartition::GetInstance()->SetMesh("GRIDMESH");
	CSpatialPartition::GetInstance()->SetCamera(&camera);
	CSpatialPartition::GetInstance()->SetLevelOfDetails(40000.0f, 160000.0f);
	EntityManager::GetInstance()->SetSpatialPartition(CSpatialPartition::GetInstance());

	// Create entities into the scene
	//Create::Entity("reference", Vector3(0.0f, 0.0f, 0.0f)); // Reference
	//Create::Entity("lightball", Vector3(lights[0]->position.x, lights[0]->position.y, lights[0]->position.z)); // Lightball

	{
		Vector3 housePos = Vector3(Math::RandIntMinMax(-400, 400), 5, Math::RandIntMinMax(-400, 400));
		theHouse = new House();
		theHouse->Init(housePos);
	}

	human = new Human();
	human->Init();
	CSceneGraph::GetInstance()->AddNode(human);

	GenericEntity* lampPost = Create::Entity("lamppostmed", Vector3(Math::RandIntMinMax(-400, 400), 5, Math::RandIntMinMax(-400, 400)), Vector3(5, 5, 5));
	lampPost->InitLOD("lampposthigh", "lamppostmed", "lamppostlow");
	lampPost->SetCollider(true);
	lampPost->SetAABB(Vector3(2, 15, 2), Vector3(-2, -15, -2));
	CSceneGraph::GetInstance()->AddNode(lampPost);

	GenericEntity* tree = Create::Entity("treemed", Vector3(Math::RandIntMinMax(-400, 400), 13.5f, Math::RandIntMinMax(-400, 400)), Vector3(5, 5, 5));
	tree->InitLOD("treehigh", "treemed", "treelow");
	tree->SetCollider(true);
	tree->SetAABB(Vector3(3, 21.5f, 3), Vector3(-3, -21.5f, -3));
	CSceneGraph::GetInstance()->AddNode(tree);

	GenericEntity* car = Create::Entity("carmed", Vector3(Math::RandIntMinMax(-400, 400), -4, Math::RandIntMinMax(-400, 400)), Vector3(5, 5, 5));
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
	timerToSpawnZombie = 0.0f;
	gameEnd = false;
	timerToWinGame = 0.0f;
	createScreen = false;
}

void SceneText::Update(double dt)
{
	if (!gameEnd)
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

		if (KeyboardController::GetInstance()->IsKeyDown('5'))
			lights[0]->type = Light::LIGHT_POINT;
		else if (KeyboardController::GetInstance()->IsKeyDown('6'))
			lights[0]->type = Light::LIGHT_DIRECTIONAL;
		else if (KeyboardController::GetInstance()->IsKeyDown('7'))
			lights[0]->type = Light::LIGHT_SPOT;

		if (KeyboardController::GetInstance()->IsKeyDown('I'))
			lights[0]->position.z -= (float)(10.f * dt);
		if (KeyboardController::GetInstance()->IsKeyDown('K'))
			lights[0]->position.z += (float)(10.f * dt);
		if (KeyboardController::GetInstance()->IsKeyDown('J'))
			lights[0]->position.x -= (float)(10.f * dt);
		if (KeyboardController::GetInstance()->IsKeyDown('L'))
			lights[0]->position.x += (float)(10.f * dt);
		if (KeyboardController::GetInstance()->IsKeyDown('O'))
			lights[0]->position.y -= (float)(10.f * dt);
		if (KeyboardController::GetInstance()->IsKeyDown('P'))
			lights[0]->position.y += (float)(10.f * dt);

		if (KeyboardController::GetInstance()->IsKeyReleased('M'))
		{
			CSceneNode* theNode = CSceneGraph::GetInstance()->GetNode(1);
			Vector3 pos = theNode->GetEntity()->GetPosition();
			theNode->GetEntity()->SetPosition(Vector3(pos.x + 50.0f, pos.y, pos.z + 50.0f));
		}
		if (KeyboardController::GetInstance()->IsKeyReleased('N'))
			CSpatialPartition::GetInstance()->PrintSelf();

		// if the left mouse button was released
		if (MouseController::GetInstance()->IsButtonReleased(MouseController::LMB))
			cout << "Left Mouse Button was released!" << endl;
		if (MouseController::GetInstance()->IsButtonReleased(MouseController::RMB))
			cout << "Right Mouse Button was released!" << endl;
		if (MouseController::GetInstance()->IsButtonReleased(MouseController::MMB))
			cout << "Middle Mouse Button was released!" << endl;
		if (MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_XOFFSET) != 0.0)
			cout << "Mouse Wheel has offset in X-axis of " << MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_XOFFSET) << endl;
		if (MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_YOFFSET) != 0.0)
			cout << "Mouse Wheel has offset in Y-axis of " << MouseController::GetInstance()->GetMouseScrollStatus(MouseController::SCROLL_TYPE_YOFFSET) << endl;
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

		// Game ends when player survived for 30s or player collides with zombie
		//timerToWinGame += (float)dt;
		if (timerToWinGame > 30.0f || playerInfo->GetPlayerLose())
			gameEnd = true;
	}

	// show postgame screen based on outcome
	if (gameEnd)
	{
		if (!createScreen)
		{
			if (playerInfo->GetPlayerLose())
				Create::Sprite2DObject("lose", Vector3(0.0f, 0.0f, 0.0f), Vector3(400.0f, 400.0f, 400.0f));
			else
				Create::Sprite2DObject("win", Vector3(0.0f, 0.0f, 0.0f), Vector3(400.0f, 400.0f, 400.0f));

			createScreen = true;
		}
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
	delete lights[0];
	delete lights[1];
}
