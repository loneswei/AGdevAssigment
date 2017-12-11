#include "house.h"
#include "../SceneGraph/SceneGraph.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"

void House::Init()
{
	Vector3 pos = Vector3(Math::RandFloatMinMax(-400, 400), -10, Math::RandFloatMinMax(-400, 400));
	GenericEntity *roof = Create::Entity("houseroof", pos, Vector3(5, 5, 5));
	CSceneNode *roofNode = CSceneGraph::GetInstance()->AddNode(roof);

	GenericEntity *leftWall = Create::Entity("houseleftwall", pos, Vector3(5, 5, 5));
	CSceneNode *LWallNode = roofNode->AddChild(leftWall);

	GenericEntity *rightWall = Create::Entity("houserightwall", pos, Vector3(5, 5, 5));
	CSceneNode *RWallNode = roofNode->AddChild(rightWall);

	GenericEntity *backWall = Create::Entity("housebackwall", pos, Vector3(5, 5, 5));
	CSceneNode *BWallNode = roofNode->AddChild(backWall);

	GenericEntity *frontWall = Create::Entity("housemedfrontwall", pos, Vector3(5, 5, 5));
	CSceneNode *FWallNode = roofNode->AddChild(frontWall);
	frontWall->InitLOD("househighfrontwall", "housemedfrontwall", "househighfrontwall");

	GenericEntity *door = Create::Entity("houselowdoor", pos, Vector3(5, 5, 5));
	CSceneNode *DoorNode = roofNode->AddChild(door);
	door->InitLOD("househighdoor", "housemeddoor", "houselowdoor");
}

void House::Update(double dt)
{
}
