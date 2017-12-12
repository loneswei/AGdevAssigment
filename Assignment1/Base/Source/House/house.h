#pragma once
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"
#include "../SceneGraph/SceneGraph.h"

class House
{
public:
	House() {};
	virtual ~House() {};

	void Init(Vector3 pos);
	void Update(double dt);

private:
	Vector3 pos;
	GenericEntity *roof, *leftWall, *rightWall, *backWall, *frontWall, *door;
	CSceneNode *roofNode, *LWallNode, *RWallNode, *BWallNode, *FWallNode, *DoorNode;
};