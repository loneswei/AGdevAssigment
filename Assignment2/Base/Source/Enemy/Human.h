#pragma once
#include "Enemy.h"
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"

class Human : public CEnemy
{
public:
	Human() : CEnemy() {};
	virtual ~Human() {
			CSpatialPartition::GetInstance()->theGrid[index].SetMesh("GRIDMESH");
	};

	void Init();
	void Update(double dt);

	int index;
};