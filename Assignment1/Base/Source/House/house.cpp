#include "house.h"

void House::Init(Vector3 pos)
{
	// creation of house
	roof = Create::Entity("houseroof", Vector3(pos.x, pos.y + 25.5f, pos.z), Vector3(5, 5, 5));
	roofNode = CSceneGraph::GetInstance()->AddNode(roof);
	roof->SetCollider(true);
	roof->SetAABB(Vector3(20, 6, 20), Vector3(-20, -6, -20));

	leftWall = Create::Entity("houseleftwall", Vector3(pos.x - 12.5f, pos.y, pos.z), Vector3(5, 5, 5));
	LWallNode = roofNode->AddChild(leftWall);
	leftWall->SetCollider(true);
	leftWall->SetAABB(Vector3(5, 14, 15), Vector3(-5, -14, -15));

	rightWall = Create::Entity("houserightwall", Vector3(pos.x + 12.5f, pos.y, pos.z), Vector3(5, 5, 5));
	RWallNode = roofNode->AddChild(rightWall);
	rightWall->SetCollider(true);
	rightWall->SetAABB(Vector3(5, 14, 15), Vector3(-5, -14, -15));

	backWall = Create::Entity("housebackwall", Vector3(pos.x, pos.y, pos.z - 12.5f), Vector3(5, 5, 5));
	BWallNode = roofNode->AddChild(backWall);
	backWall->SetCollider(true);
	backWall->SetAABB(Vector3(10, 14, 3), Vector3(-10, -14, -3));

	frontWall = Create::Entity("housemedfrontwall", Vector3(pos.x, pos.y, pos.z + 12.5f), Vector3(5, 5, 5));
	FWallNode = roofNode->AddChild(frontWall);
	frontWall->InitLOD("househighfrontwall", "housemedfrontwall", "househighfrontwall");
	frontWall->SetCollider(true);
	frontWall->SetAABB(Vector3(10, 14, 3), Vector3(-10, -14, -3));
	
	door = Create::Entity("houselowdoor", Vector3(pos.x, pos.y - 5, pos.z + 12.5f), Vector3(5, 5, 5));
	DoorNode = roofNode->AddChild(door);
	door->InitLOD("househighdoor", "housemeddoor", "houselowdoor");
	door->SetCollider(true);
	door->SetAABB(Vector3(5, 10, 1), Vector3(-5, -10, -1));
}

void House::Update(double dt)
{
}
