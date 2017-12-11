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

    zBody = Create::Entity("zombiebody", pos, Vector3(5, 5, 5));
	zBody->SetCollider(true);
	zBody->SetIsZombie(true);
	zBody->SetAABB(Vector3(2.5, 2.5, 2.5), Vector3(-2.5, -2.5, -2.5));
	CSceneNode *bodyNode = CSceneGraph::GetInstance()->AddNode(zBody);
	
	 zLArm = Create::Entity("zombiearm", Vector3(pos.x + 2.5,pos.y + 5,pos.z +3), Vector3(5, 5, 5));
	zLArm->SetCollider(true);
	zLArm->SetIsZombie(true);
	zLArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
	CSceneNode *LArmNode = bodyNode->AddChild(zLArm);
	//LArmNode->ApplyTranslate(2.5, 5, 3); //this causes duplication of head and make the scenegraph haywire


	zRArm = Create::Entity("zombiearm", Vector3(pos.x -  2.5, pos.y + 5, pos.z + 3), Vector3(5, 5, 5));
	zRArm->SetCollider(true);
	zRArm->SetIsZombie(true);
	zRArm->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
	CSceneNode *RArmNode = bodyNode->AddChild(zRArm);
	//RArmNode->ApplyTranslate(-2.5, 5, 3);

	zHead = Create::Entity("zombiehead", Vector3(pos.x,pos.y+8,pos.z), Vector3(5, 5, 5));
	zHead->SetCollider(true);
	zHead->SetIsZombie(true);
	zHead->SetAABB(Vector3(2, 2, 2), Vector3(-2, -2, -2));
	CSceneNode *zHeadNode = bodyNode->AddChild(zHead);
	//zHeadNode->ApplyTranslate(0,8,0);  //this causes duplication of head and make the scenegraph haywire
	//CUpdateTransformation* aRotateMtx = new CUpdateTransformation();
	//aRotateMtx->ApplyUpdate(0.5f, 0.0f, 1.0f, 0.0f);
	//aRotateMtx->SetSteps(-2, 2);
	//zHeadNode->SetUpdateTransformation(aRotateMtx);


	position = pos;
	target = CPlayerInfo::GetInstance()->GetPos();
}

void Zombie::Update(double dt)
{

	if (health <= 0)
	{
		SetDead(true);
		SetIsDone(true);
		CSceneGraph::GetInstance()->DeleteNode(this);
	}

	Constrain();

	// movement
	bool canMove = false;
	bool hasCollider = false;
	Vector3 tempPos = this->GetPosition();
	Vector3 moveDir = target - position;
	tempPos += moveDir.Normalized() * (float)m_dSpeed * (float)dt;

	vector<EntityBase*>zombieGridObj = CSpatialPartition::GetInstance()->GetObjects(this->zBody->GetPosition(), 1);
	for (int i = 0; i < zombieGridObj.size(); ++i)
	{
		if (zombieGridObj[i] == this->zRArm || zombieGridObj[i] == this->zHead || zombieGridObj[i] == this->zBody || zombieGridObj[i] == this->zLArm)
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
		this->position += moveDir.Normalized() * (float)m_dSpeed * (float)dt;
}
	

