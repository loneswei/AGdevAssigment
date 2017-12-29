#pragma once
#include "Projectile.h"
#include "../GroundEntity.h"

class Mesh;
class CPlayerInfo;

class Rocket : public CProjectile
{
private:
	GroundEntity* m_pTerrain;
public:
	Rocket(void);
	Rocket(Mesh* _modelMesh);
	~Rocket(void);

	void Update(double dt);
	void SetTerrain(GroundEntity* m_pTerrain);


	int currentIndex;
	int prevIndex;
};

namespace Create
{
	 Rocket* rocket(const std::string& _meshName,
		const Vector3& _position,
		const Vector3& _direction,
		const float m_fLifetime,
		const float m_fSpeed,
		CPlayerInfo* _source = NULL);
};
