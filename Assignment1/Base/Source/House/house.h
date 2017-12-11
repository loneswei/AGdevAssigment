#pragma once
#include "../GenericEntity.h"
#include "../EntityManager.h"
#include "Vector3.h"

class House
{
public:
	House() {};
	virtual ~House() {};

	void Init();
	void Update(double dt);
};