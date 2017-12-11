#include "house.h"
#include "../SceneGraph/SceneGraph.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"

void House::Init()
{
	Vector3 pos;
	pos.Set(Math::RandFloatMinMax(-200, 200), 5, Math::RandFloatMinMax(-200, 200));
	
	GenericEntity *roof = Create::Entity("houseroof", Vector3(pos.x, pos.y + 25.5f, pos.z), Vector3(5, 5, 5));
	CSceneNode *roofNode = CSceneGraph::GetInstance()->AddNode(roof);
	roof->SetCollider(true);
	roof->SetAABB(Vector3(20, 6, 20), Vector3(-20, -6, -20));

	GenericEntity *leftWall = Create::Entity("houseleftwall", Vector3(pos.x - 12.5f, pos.y, pos.z), Vector3(5, 5, 5));
	CSceneNode *LWallNode = roofNode->AddChild(leftWall);
	leftWall->SetCollider(true);
	leftWall->SetAABB(Vector3(5, 14, 15), Vector3(-5, -14, -15));

	GenericEntity *rightWall = Create::Entity("houserightwall", Vector3(pos.x + 12.5f, pos.y, pos.z), Vector3(5, 5, 5));
	CSceneNode *RWallNode = roofNode->AddChild(rightWall);
	rightWall->SetCollider(true);
	rightWall->SetAABB(Vector3(5, 14, 15), Vector3(-5, -14, -15));

	GenericEntity *backWall = Create::Entity("housebackwall", Vector3(pos.x, pos.y, pos.z - 12.5f), Vector3(5, 5, 5));
	CSceneNode *BWallNode = roofNode->AddChild(backWall);
	backWall->SetCollider(true);
	backWall->SetAABB(Vector3(10, 14, 3), Vector3(-10, -14, -3));

	GenericEntity *frontWall = Create::Entity("housemedfrontwall", Vector3(pos.x, pos.y, pos.z + 12.5f), Vector3(5, 5, 5));
	CSceneNode *FWallNode = roofNode->AddChild(frontWall);
	frontWall->InitLOD("househighfrontwall", "housemedfrontwall", "househighfrontwall");
	frontWall->SetCollider(true);
	frontWall->SetAABB(Vector3(10, 14, 3), Vector3(-10, -14, -3));
	
	GenericEntity *door = Create::Entity("houselowdoor", Vector3(pos.x, pos.y - 5, pos.z + 12.5f), Vector3(5, 5, 5));
	CSceneNode *DoorNode = roofNode->AddChild(door);
	door->InitLOD("househighdoor", "housemeddoor", "houselowdoor");
	door->SetCollider(true);
	door->SetAABB(Vector3(5, 10, 1), Vector3(-5, -10, -1));
}

void House::Update(double dt)
{
}
