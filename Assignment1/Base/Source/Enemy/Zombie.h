#pragma once
#include "Enemy.h"
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"

class Zombie : public CEnemy
{
public:
	Zombie() : CEnemy() {} ;
	virtual ~Zombie() {} ;

	void Init();
	void Update(double dt);

	void SetJockey(bool j) { jockey = j; }
	bool GetJockey() { return jockey; }
private:
	GenericEntity *zBody, *zHead, *zLArm, *zRArm;
	bool jockey;
};



