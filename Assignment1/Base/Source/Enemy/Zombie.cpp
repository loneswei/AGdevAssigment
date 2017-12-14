#include "Zombie.h"
#include "../SceneGraph/SceneGraph.h"
#include"../PlayerInfo/PlayerInfo.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"
#include "GraphicsManager.h"
#include"RenderHelper.h"

void Zombie::Init()
{
	m_dSpeed = Math::RandIntMinMax(10,25);
	dead = false;
	Vector3 pos;
	pos.Set(Math::RandFloatMinMax(-400, 400), -2, Math::RandFloatMinMax(-400, 400));

	//prevent it from spawning it too near to the player starting game position
	while ((pos.x > -200 && pos.x < 200) || (pos.z > -200 && pos.z < 200))
		pos.Set(Math::RandFloatMinMax(-400, 400), -2, Math::RandFloatMinMax(-400, 400));

	// randomly spawns a zombie or zombiejockey
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

	// creating the zombie/zombie jockey
	if (!jockey)
	{
		zBody = Create::Entity("zombiebody", pos, Vector3(5, 5, 5));
		zBody->SetCollider(true);
		zBody->SetIsZombie(true);
		zBody->SetZombiePart(true);
		zBody->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
		CSceneNode *bodyNode = CSceneGraph::GetInstance()->AddNode(zBody);

		zLArm = Create::Entity("zombiearm", Vector3(pos.x + 2.5, pos.y + 5, pos.z + 3), Vector3(5, 5, 5));
		zLArm->SetCollider(true);
		zLArm->SetIsZombie(false);
		zLArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		zLArm->SetZombiePart(true);
		CSceneNode *LArmNode = bodyNode->AddChild(zLArm);

		zRArm = Create::Entity("zombiearm", Vector3(pos.x - 2.5, pos.y + 5, pos.z + 3), Vector3(5, 5, 5));
		zRArm->SetCollider(true);
		zRArm->SetIsZombie(false);
		zRArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));		
		zRArm->SetZombiePart(true);
		CSceneNode *RArmNode = bodyNode->AddChild(zRArm);

		zHead = Create::Entity("zombiehead", Vector3(pos.x, pos.y + 8, pos.z), Vector3(5, 5, 5));
		zHead->SetCollider(true);
		zHead->SetIsZombie(false);
		zHead->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		zHead->SetZombiePart(true);
		CSceneNode *zHeadNode = bodyNode->AddChild(zHead);
	}
	else
	{
		zHorse = Create::Entity("zombiehorse", pos, Vector3(5, 5, 5));
		zHorse->SetCollider(true);
		zHorse->SetIsZombie(true);
		zHorse->SetZombiePart(true);
		zHorse->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
		CSceneNode *horseNode = CSceneGraph::GetInstance()->AddNode(zHorse);

		zBody = Create::Entity("zombiebody", Vector3(pos.x, pos.y + 5, pos.z), Vector3(5, 5, 5));
		zBody->SetCollider(true);
		zBody->SetIsZombie(false);
		zBody->SetZombiePart(true);
		zBody->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
		CSceneNode *bodyNode = horseNode->AddChild(zBody);

		zLArm = Create::Entity("zombiearm", Vector3(pos.x + 2.5, pos.y + 10, pos.z + 3), Vector3(5, 5, 5));
		zLArm->SetCollider(true);
		zLArm->SetIsZombie(false);
		zLArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		zLArm->SetZombiePart(true);
		CSceneNode *LArmNode = bodyNode->AddChild(zLArm);

		zRArm = Create::Entity("zombiearm", Vector3(pos.x - 2.5, pos.y + 10, pos.z + 3), Vector3(5, 5, 5));
		zRArm->SetCollider(true);
		zRArm->SetIsZombie(false);
		zRArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		zRArm->SetZombiePart(true);
		CSceneNode *RArmNode = bodyNode->AddChild(zRArm);

		zHead = Create::Entity("zombiehead", Vector3(pos.x, pos.y + 13, pos.z), Vector3(5, 5, 5));
		zHead->SetCollider(true);
		zHead->SetIsZombie(false);
		zHead->SetZombiePart(true);
		zHead->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
		CSceneNode *zHeadNode = bodyNode->AddChild(zHead);
	}

	position = pos;
	EntityManager::GetInstance()->AddEntity(this, true);


}

void Zombie::Update(double dt)
{
	// if dead set to done and return to reduce unnecessary calculations
	if (dead)
	{
		if (!isDone)
			SetIsDone(true);
		return;
	}

	// movement

	// constantly update the target since player position will change as well
	target = CPlayerInfo::GetInstance()->GetPos();
	bool canMove = false;
	bool hasCollider = false;
	Vector3 tempPos = position;
	Vector3 moveDir = target - position;

	// gameplay : when zombie 'collides' with player
	if (DistanceSquaredBetween(CPlayerInfo::GetInstance()->GetPos(), position) < 25)
	{
		CPlayerInfo::GetInstance()->SetPlayerLose(true);
		return;
	}

	// simulate zombie movement
	tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;

	// cannot use because the size of the vector will change will projectile kill of the zombie, causing crash
	//zombieGridObj = CSpatialPartition::GetInstance()->GetObjects(this->zBody->GetPosition(), 1);
	//for (int i = 0; i < zombieGridObj.size(); ++i)
	//{
	//	if (zombieGridObj[i] == this->zRArm || zombieGridObj[i] == this->zHead || zombieGridObj[i] == this->zBody || zombieGridObj[i] == this->zLArm)
	//		continue;
	//	if (zombieGridObj[i] == this || !zombieGridObj[i] || zombieGridObj[i]->IsDone())
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

	//checks with every entity in entitylist
	for (auto go : EntityManager::GetInstance()->GetEntityList())
	{
		//prevents unnecessary checks
		if (go == this->zRArm || go == this->zHead || go == this->zBody || go == this->zLArm)
			continue;
		if (go == this || !go || go->IsDone())
			continue;

		if (jockey)
			if (go == this->zHorse)
				continue;

		if (go->HasCollider())
		{
			hasCollider = true;
			// zombie is not an obj but an invisible pt that is based off the parent node position
			if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, go))
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
	// conditions satisfied
	if ((hasCollider && canMove) || !hasCollider)
	{
		if (jockey)
		{
			zHorse->SetPosition(zHorse->GetPosition() + moveDir.Normalized() * (float)m_dSpeed * (float)dt);
			//prevent "flying horses"
			zHorse->SetPosition(Vector3(zHorse->GetPosition().x, -2, zHorse->GetPosition().z));
			zBody->SetPosition(Vector3(zHorse->GetPosition().x, zHorse->GetPosition().y + 5, zHorse->GetPosition().z));
			zLArm->SetPosition(Vector3(zHorse->GetPosition().x + 2.5, zHorse->GetPosition().y + 10, zHorse->GetPosition().z + 3));
			zRArm->SetPosition(Vector3(zHorse->GetPosition().x - 2.5, zHorse->GetPosition().y + 10, zHorse->GetPosition().z + 3));
			zHead->SetPosition(Vector3(zHorse->GetPosition().x, zHorse->GetPosition().y + 13, zHorse->GetPosition().z));
			position = zHorse->GetPosition();
		}
		else
		{
			zBody->SetPosition(zBody->GetPosition() + moveDir.Normalized() * (float)m_dSpeed * (float)dt);
			// prevent "flying bodies"
			zBody->SetPosition(Vector3(zBody->GetPosition().x, -2, zBody->GetPosition().z));
			zLArm->SetPosition(Vector3(zBody->GetPosition().x + 2.5, zBody->GetPosition().y + 5, zBody->GetPosition().z + 3));
			zRArm->SetPosition(Vector3(zBody->GetPosition().x - 2.5, zBody->GetPosition().y + 5, zBody->GetPosition().z + 3));
			zHead->SetPosition(Vector3(zBody->GetPosition().x, zBody->GetPosition().y + 8, zBody->GetPosition().z));
			position = zBody->GetPosition();
		}
	}

	Constrain();
}

