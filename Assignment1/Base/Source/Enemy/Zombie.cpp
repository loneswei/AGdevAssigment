#include "Zombie.h"
#include "../SceneGraph/SceneGraph.h"
#include"../PlayerInfo/PlayerInfo.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"


void Zombie::Init()
{
	health = 200;
	m_dSpeed = 40.f;
	Vector3 pos = Vector3(Math::RandFloatMinMax(-200, 200), 10, Math::RandFloatMinMax(-200, 200));
	GenericEntity *zBody = Create::Entity("zombiebody", pos, Vector3(5, 5, 5));
	CSceneNode *bodyNode = CSceneGraph::GetInstance()->AddNode(zBody);

	GenericEntity *zArm = Create::Entity("zombiearm", pos, Vector3(5, 5, 5));
	CSceneNode *LArmNode = bodyNode->AddChild(zArm);
	LArmNode->ApplyTranslate(2.5, 5, 3);

	CSceneNode *RArmNode = bodyNode->AddChild(zArm);
	RArmNode->ApplyTranslate(-2.5, 5, 3);

	GenericEntity *zHead = Create::Entity("zombiehead", pos, Vector3(5, 5, 5));
	CSceneNode *zHeadNode = bodyNode->AddChild(zHead);
	zHeadNode->ApplyTranslate(0, 8, 0);


}

void Zombie::Update(double dt)
{
	if (health <= 0)
	{
		SetIsDone(true);
		CSceneGraph::GetInstance()->DeleteNode(this);
	}


	// movement
	if (DistanceSquaredBetween(CPlayerInfo::GetInstance()->GetPos(), this->position) < 100)
	{
		bool canMove = false;
		bool hasCollider = false;
		Vector3 moveDir = CPlayerInfo::GetInstance()->GetPos() - this->position;
		Vector3 tempPos = this->position;
		tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;
		vector<EntityBase*>zombieGridObj = CSpatialPartition::GetInstance()->GetObjects(this->position, 1);
		for (int i = 0; i < zombieGridObj.size(); ++i)
		{
			if (zombieGridObj[i] == this)
				continue;

			if (zombieGridObj[i]->HasCollider())
			{
				hasCollider = true;
				if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, zombieGridObj[i]))
				{
					canMove = false;
					break;
				}
				else
					canMove = true;
			}
			else
				hasCollider = false;
		}
		if ((hasCollider && canMove) || !hasCollider)
			position += moveDir.Normalized() * (float)m_dSpeed * (float)dt;
	}
	else
	{
		bool canMove = false;
		bool hasCollider = false;

		Vector3 moveDir = (Math::RandFloatMinMax(-50, 50), 0, Math::RandFloatMinMax(-50, 50));
		Vector3 tempPos = position;
		tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;

		vector<EntityBase*>zombieGridObj = CSpatialPartition::GetInstance()->GetObjects(this->position, 1);
		for (int i = 0; i < zombieGridObj.size(); ++i)
		{
			if (zombieGridObj[i] == this)
				continue;

			if (zombieGridObj[i]->HasCollider())
			{
				hasCollider = true;
				if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, zombieGridObj[i]))
				{
					canMove = false;
					break;
				}
				else
					canMove = true;
			}
			else
				hasCollider = false;
		}
		if ((hasCollider && canMove) || !hasCollider)
			position += moveDir.Normalized() * (float)m_dSpeed * (float)dt;
	}
}
