#include "house.h"
#include "../SceneGraph/SceneGraph.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"

void House::Init()
{
	Vector3 pos = Vector3(0, 0, 0);
	
	GenericEntity *roof = Create::Entity("houseroof", pos, Vector3(5, 5, 5));
	CSceneNode *roofNode = CSceneGraph::GetInstance()->AddNode(roof);
	roof->SetCollider(true);
	roof->SetAABB(Vector3(20, 20, 20), Vector3(-20, -20, -20));

	//GenericEntity *leftWall = Create::Entity("houseleftwall", pos, Vector3(5, 5, 5));
	//CSceneNode *LWallNode = roofNode->AddChild(leftWall);
	//leftWall->SetCollider(true);
	//leftWall->SetAABB(Vector3(15, 30, 20), Vector3(10, 0, -20));

	//GenericEntity *rightWall = Create::Entity("houserightwall", pos, Vector3(5, 5, 5));
	//CSceneNode *RWallNode = roofNode->AddChild(rightWall);
	//rightWall->SetCollider(true);
	//rightWall->SetAABB(Vector3(15, 5, 15), Vector3(-15, -5, -15));

	//GenericEntity *backWall = Create::Entity("housebackwall", pos, Vector3(5, 5, 5));
	//CSceneNode *BWallNode = roofNode->AddChild(backWall);
	//backWall->SetCollider(true);
	//backWall->SetAABB(Vector3(15, 5, 15), Vector3(-15, -5, -15));

	//GenericEntity *frontWall = Create::Entity("housemedfrontwall", pos, Vector3(5, 5, 5));
	//CSceneNode *FWallNode = roofNode->AddChild(frontWall);
	//frontWall->InitLOD("househighfrontwall", "housemedfrontwall", "househighfrontwall");
	//frontWall->SetCollider(true);
	//frontWall->SetAABB(Vector3(15, 5, 15), Vector3(-15, -5, -15));
	
	//GenericEntity *door = Create::Entity("houselowdoor", pos, Vector3(5, 5, 5));
	//CSceneNode *DoorNode = roofNode->AddChild(door);
	//door->InitLOD("househighdoor", "housemeddoor", "houselowdoor");
	//door->SetCollider(true);
	//door->SetAABB(Vector3(15, 5, 15), Vector3(-15, -5, -15));
}

void House::Update(double dt)
{
}
