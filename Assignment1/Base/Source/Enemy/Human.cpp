#include "Human.h"

void Human::Init()
{
	m_dSpeed = 40.f;
	dead = false;
	position = Vector3(Math::RandIntMinMax(-400, 400), 0, Math::RandIntMinMax(-400, 400));
	target = Vector3(90, 0, 450);
	scale = Vector3(5, 5, 5);
	InitLOD("humanhigh", "humanmed", "humanlow");
	SetCollider(true);
	SetAABB(Vector3(6, 7.5f, 5), Vector3(-6, -7.5f, -5));
	SetIsHuman(true);
	EntityManager::GetInstance()->AddEntity(this, true);
}

void Human::Update(double dt)
{
	bool canMove = false;
	bool hasCollider = false;
	Vector3 tempPos = position;
	Vector3 moveDir = position - target;
	tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;

	vector<EntityBase*>humangridobj = CSpatialPartition::GetInstance()->GetObjects(position, 1);
	for (int i = 0; i < humangridobj.size(); ++i)
	{
		if (humangridobj[i] ==this)
			continue;

		if (humangridobj[i]->HasCollider())
		{
			hasCollider = true;
			if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, humangridobj[i]))
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
	{
		position+= moveDir.Normalized() * (float)m_dSpeed * (float)dt;
	}

	if (position.z > 400.0f)
		target.z = position.z * -1;
	else if (position.z < -400.0f)
		target.z = position.z * -1;

	Constrain();

}
