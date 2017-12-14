#include "Rocket.h"
#include "MeshBuilder.h"
#include "../EntityManager.h"
#include "../PlayerInfo/PlayerInfo.h"
#include "../SceneGraph/SceneGraph.h"
#include "../Enemy/Zombie.h"

Rocket::Rocket(void)
	: CProjectile(nullptr),
	m_pTerrain(nullptr)
{
}

Rocket::Rocket(Mesh * _modelMesh)
	: CProjectile(_modelMesh),
	m_pTerrain(nullptr)
{
}

Rocket::~Rocket(void)
{
}

void Rocket::Update(double dt)
{
	if (!m_bStatus)
		return;

	position.Set(position.x + (float)(theDirection.x * dt * m_fSpeed),
		position.y + (float)(theDirection.y * dt * m_fSpeed),
		position.z + (float)(theDirection.z * dt * m_fSpeed));

	// remove the rocket when it is already out of bounds
	if (position.x < -500 || position.x > 500 || position.z < -500 || position.z > 500 || position.y > 1000)
	{
		SetIsDone(true);
		SetStatus(false);
		CSceneGraph::GetInstance()->DeleteNode(this);
	}

	// get list of obj that is in rocket grid
	// RGridObj means RocketGridObjects
	vector<EntityBase*> Removal;
	vector<EntityBase*> RGridObj = CSpatialPartition::GetInstance()->GetObjects(position, 1.0f);

	for (int i = 0; i < RGridObj.size(); ++i)
	{
		// prevent unnecessary checks (selfchecking, checking with null and checking with a done obj)
		if (RGridObj[i] == this || RGridObj[i]->IsDone() || !RGridObj[i])
			continue;

		// if collided with an obj
		if (EntityManager::GetInstance()->SphereAABBCollision(RGridObj[i]->GetPosition() - 0.5f * RGridObj[i]->GetScale(),
			RGridObj[i]->GetPosition() + 0.5f * RGridObj[i]->GetScale(),
			position, scale.x))
		{

			// the whole zombie will be destroyed even if 1 part hit, so just add the pts as long as it collides zombie
			if (RGridObj[i]->GetZombiePart())
				CPlayerInfo::GetInstance()->AddScore(100);

			// rocket hit human intentionally, - pts
			if (RGridObj[i]->GetIsHuman())
				CPlayerInfo::GetInstance()->AddScore(-100);

			// trying to be cautious here by copying it into another vector be4 deletion
			Removal = RGridObj;
			for (int i = 0; i < Removal.size(); ++i)
				if (CSceneGraph::GetInstance()->DeleteNode(Removal[i]))
					cout << "Removal Successful" << endl;

		}
	}



	if (position.y < m_pTerrain->GetTerrainHeight(position) - 10.0f)  // hit ground, will just destroy everything in that ground grid
	{
		vector<EntityBase*> RGridObj = CSpatialPartition::GetInstance()->GetObjects(position, 1.0f);

		for (int i = 0; i < RGridObj.size(); ++i)
			if (CSceneGraph::GetInstance()->DeleteNode(RGridObj[i]))
				cout << "Removal Successful" << endl;
	}
}

void Rocket::SetTerrain(GroundEntity * m_pTerrain)
{
	this->m_pTerrain = m_pTerrain;
}

Rocket * Create::rocket(const std::string & _meshName, const Vector3 & _position, const Vector3 & _direction, const float m_fLifetime, const float m_fSpeed, CPlayerInfo * _source)
{
	Mesh* modelMesh = MeshBuilder::GetInstance()->GetMesh(_meshName);
	if (modelMesh == nullptr)
		return nullptr;

	Rocket* result = new Rocket(modelMesh);
	result->Set(_position, _direction, m_fLifetime, m_fSpeed);
	result->SetStatus(true);
	result->SetCollider(true);
	result->SetSource(_source);
	result->SetTerrain(_source->GetTerrain());
	EntityManager::GetInstance()->AddEntity(result, true);
	return result;
}
