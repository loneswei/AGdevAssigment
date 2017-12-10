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

class ZombiePart : public GenericEntity
{
private:
	Zombie *zombie;
	std::string partName;
	Mesh *modelMesh;
public:
	ZombiePart(void);
	ZombiePart(Mesh* _modelMesh, Zombie *z, std::string pName);
	std::string GetPartName() { return partName; }

};

namespace Create
{
	Zombie *zombieEntity(const std::string& _meshName,
		const Vector3& _position,
		const Vector3& _scale = Vector3(1.0f, 1.0f, 1.0f));
}


