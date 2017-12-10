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
};



