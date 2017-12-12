#pragma once
#include "Enemy.h"
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"

class Human : public CEnemy
{
public:
	Human() : CEnemy() {};
	virtual ~Human() {};

	void Init();
	void Update(double dt);
};