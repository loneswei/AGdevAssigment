#include "Human.h"

void Human::Init()
{
	m_dSpeed = 40.f;
	dead = false;
	position = Vector3(Math::RandIntMinMax(-400, 400), 0, Math::RandIntMinMax(-400, 400));
	scale = Vector3(5, 5, 5);
	InitLOD("humanhigh", "humanmed", "humanlow");
	SetCollider(true);
	SetAABB(Vector3(6, 7.5f, 5), Vector3(-6, -7.5f, -5));
	SetIsHuman(true);
	EntityManager::GetInstance()->AddEntity(this, true);
}

void Human::Update(double dt)
{
	//Constrain();

	// movement
	bool canMove = false;
	bool hasCollider = false;
	Vector3 tempPos = position;
	Vector3 moveDir = target - position;
	tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;

		vector<EntityBase*>humanGridObj = CSpatialPartition::GetInstance()->GetObjects(position, 1);
		for (int i = 0; i < humanGridObj.size(); ++i)
		{
			if (humanGridObj[i] == this)
				continue;

			if (humanGridObj[i]->HasCollider())
			{
				hasCollider = true;
				if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, humanGridObj[i]))
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
