#pragma once
#include "Enemy.h"
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"

class Zombie : public CEnemy
{
public:
	Zombie() : CEnemy(), jockey(true) { };
	virtual ~Zombie() {
		for (int i = 0; i < CSpatialPartition::GetInstance()->GetxNumOfGrid(); i++)
			for (int j = 0; j < CSpatialPartition::GetInstance()->GetzNumOfGrid(); j++)
				CSpatialPartition::GetInstance()->theGrid[i * CSpatialPartition::GetInstance()->GetzNumOfGrid() + j].SetMesh("GRIDMESH");
	} ;

	void Init();
	void Update(double dt);

	void SetJockey(bool j) { jockey = j; }
	bool GetJockey() { return jockey; }

private:
	GenericEntity *zBody, *zHead, *zLArm, *zRArm, *zHorse;
	bool jockey;

	int currentIndex;
	int previousIndex;
	//vector<EntityBase*>zombieGridObj;
};



