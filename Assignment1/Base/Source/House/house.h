#pragma once
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"
#include "../SceneGraph/SceneGraph.h"

class House : public EntityBase
{
public:
	House() {};
	virtual ~House() {
		CSpatialPartition::GetInstance()->theGrid[index].SetMesh("GRIDMESH");
	};

	void Init(Vector3 pos);
	void Update(double dt);

	int index;

private:
	Vector3 pos;
	GenericEntity *roof, *leftWall, *rightWall, *backWall, *frontWall, *door;
	CSceneNode *roofNode, *LWallNode, *RWallNode, *BWallNode, *FWallNode, *DoorNode;
};