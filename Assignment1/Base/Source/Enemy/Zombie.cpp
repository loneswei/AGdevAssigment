#include "Zombie.h"
#include "../SceneGraph/SceneGraph.h"
#include"../PlayerInfo/PlayerInfo.h"
#include "../SpatialPartition/SpatialPartition.h"
#include "MeshBuilder.h"

ZombiePart::ZombiePart(void): GenericEntity(nullptr)
{
}

ZombiePart::ZombiePart(Mesh * _modelMesh, Zombie * z, std::string pName) : GenericEntity(nullptr)
{
	modelMesh = _modelMesh;
	zombie = z;
	partName = pName;
}

void Zombie::Init()
{
	health = 200;
	m_dSpeed = 40.f;
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

Zombie * Create::zombieEntity(const std::string & _meshName, const Vector3 & _position, const Vector3 & _scale)
{
	Zombie*z = new Zombie();
	z->SetPosition(_position);
	z->SetScale(_scale);
	z->SetCollider(true);

	Mesh* bodyMesh = MeshBuilder::GetInstance()->GetMesh("body");
	ZombiePart *body = new ZombiePart(bodyMesh, z, "body");
	
	Mesh* armMesh = MeshBuilder::GetInstance()->GetMesh("zombiearm");
	ZombiePart *leftArm = new ZombiePart(armMesh, z, "leftarm");
	ZombiePart *rightArm = new ZombiePart(armMesh, z, "rightarm");

	Mesh *headMesh = MeshBuilder::GetInstance()->GetMesh("zombiehead");
	ZombiePart *head = new ZombiePart(headMesh, z, "head");

	CSceneNode *zombieNode = CSceneGraph::GetInstance()->AddNode(z);
	CSceneNode *zBodyNode = zombieNode->AddChild(body);
	CSceneNode *zLArmNode = zBodyNode->AddChild(leftArm);
	zLArmNode->ApplyTranslate(3, 3, 0);
	CSceneNode *zRArmNode = zBodyNode->AddChild(rightArm);
	zRArmNode->ApplyTranslate(-3, 3, 0);
	CSceneNode *zHeadNode = zBodyNode->AddChild(head);
	zHeadNode->ApplyTranslate(0, 6, 0);

	EntityManager::GetInstance()->AddEntity(z, true);

}
