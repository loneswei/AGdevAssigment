#include "Zombie.h"
#include "../SceneGraph/SceneGraph.h"
#include"../PlayerInfo/PlayerInfo.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"


void Zombie::Init()
{
	health = 200;
	m_dSpeed = 40.f;
	Vector3 pos;
	pos.Set(Math::RandFloatMinMax(-200, 200), -2, Math::RandFloatMinMax(-200, 200));

	int decideJockey = Math::RandIntMinMax(0, 1);
	switch (decideJockey)
	{
	case 0:
		jockey = false;
		break;
	case 1:
		jockey = true;
		break;
	}

	if (!jockey)
	{
		zBody = Create::Entity("zombiebody", pos, Vector3(5, 5, 5));
		zBody->SetCollider(true);
		zBody->SetIsZombie(true);
		zBody->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
		CSceneNode *bodyNode = CSceneGraph::GetInstance()->AddNode(zBody);

		zLArm = Create::Entity("zombiearm", Vector3(pos.x + 2.5, pos.y + 5, pos.z + 3), Vector3(5, 5, 5));
		zLArm->SetCollider(true);
		zLArm->SetIsZombie(false);
		zLArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *LArmNode = bodyNode->AddChild(zLArm);

		zRArm = Create::Entity("zombiearm", Vector3(pos.x - 2.5, pos.y + 5, pos.z + 3), Vector3(5, 5, 5));
		zRArm->SetCollider(true);
		zRArm->SetIsZombie(false);
		zRArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *RArmNode = bodyNode->AddChild(zRArm);

		zHead = Create::Entity("zombiehead", Vector3(pos.x, pos.y + 8, pos.z), Vector3(5, 5, 5));
		zHead->SetCollider(true);
		zHead->SetIsZombie(false);
		zHead->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *zHeadNode = bodyNode->AddChild(zHead);
	}
	else
	{
		zHorse = Create::Entity("zombiehorse", pos, Vector3(5, 5, 5));
		zHorse->SetCollider(true);
		zHorse->SetIsZombie(true);
		zHorse->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
		CSceneNode *horseNode = CSceneGraph::GetInstance()->AddNode(zHorse);

		zBody = Create::Entity("zombiebody", Vector3(pos.x, pos.y + 5, pos.z), Vector3(5, 5, 5));
		zBody->SetCollider(true);
		zBody->SetIsZombie(false);
		zBody->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
		CSceneNode *bodyNode = horseNode->AddChild(zBody);

		zLArm = Create::Entity("zombiearm", Vector3(pos.x + 2.5, pos.y + 10, pos.z + 3), Vector3(5, 5, 5));
		zLArm->SetCollider(true);
		zLArm->SetIsZombie(false);
		zLArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *LArmNode = bodyNode->AddChild(zLArm);

		zRArm = Create::Entity("zombiearm", Vector3(pos.x - 2.5, pos.y + 10, pos.z + 3), Vector3(5, 5, 5));
		zRArm->SetCollider(true);
		zRArm->SetIsZombie(false);
		zRArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *RArmNode = bodyNode->AddChild(zRArm);

		zHead = Create::Entity("zombiehead", Vector3(pos.x, pos.y + 13, pos.z), Vector3(5, 5, 5));
		zHead->SetCollider(true);
		zHead->SetIsZombie(false);
		zHead->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *zHeadNode = bodyNode->AddChild(zHead);
	}

	position = pos;
	target = CPlayerInfo::GetInstance()->GetPos();
}

void Zombie::Update(double dt)
{

	if (dead)
	{
		if (!isDone)
			SetIsDone(false);
		return;
	}

	//Constrain();

	// movement
	//bool canMove = false;
	//bool hasCollider = false;
	//Vector3 tempPos = this->GetPosition();
	//Vector3 moveDir = target - position;
	//tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;

	//vector<EntityBase*>zombieGridObj = CSpatialPartition::GetInstance()->GetObjects(this->zBody->GetPosition(), 1);
	//for (int i = 0; i < zombieGridObj.size(); ++i)
	//{
	//	if (zombieGridObj[i] == this->zRArm || zombieGridObj[i] == this->zHead || zombieGridObj[i] == this->zBody || zombieGridObj[i] == this->zLArm)
	//		continue;

	//	if (zombieGridObj[i]->HasCollider())
	//	{
	//		hasCollider = true;
	//		if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, zombieGridObj[i]))
	//		{
	//			canMove = false;
	//			break;
	//		}
	//		else
	//			canMove = true;
	//	}
	//	else
	//		hasCollider = false;
	//}
	//if ((hasCollider && canMove) || !hasCollider)
	//	this->position += moveDir.Normalized() * (float)m_dSpeed * (float)dt;
}
	

