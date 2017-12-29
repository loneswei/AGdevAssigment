#include "GenericEntity.h"
#include "MeshBuilder.h"
#include "EntityManager.h"
#include "GraphicsManager.h"
#include "RenderHelper.h"
#include "PlayerInfo\PlayerInfo.h"

GenericEntity::GenericEntity(Mesh* _modelMesh)
	: modelMesh(_modelMesh), index(0)
{
}

GenericEntity::~GenericEntity()
{
	CSpatialPartition::GetInstance()->theGrid[index].SetMesh("GRIDMESH");
}

void GenericEntity::Update(double _dt)
{
	// Does nothing here, can inherit & override or create your own version of this class :D

	for (int i = 0; i < CSpatialPartition::GetInstance()->GetxNumOfGrid(); i++)
	{
		for (int j = 0; j < CSpatialPartition::GetInstance()->GetzNumOfGrid(); j++)
		{
			if (CSpatialPartition::GetInstance()->theGrid[i * CSpatialPartition::GetInstance()->GetzNumOfGrid() + j].IsHere(this))
			{
				index = i * CSpatialPartition::GetInstance()->GetzNumOfGrid() + j;
				CSpatialPartition::GetInstance()->theGrid[i * CSpatialPartition::GetInstance()->GetzNumOfGrid() + j].SetMesh("RED_GRIDMESH");
			}
		}
	}
}

void GenericEntity::Render()
{
	MS& modelStack = GraphicsManager::GetInstance()->GetModelStack();
	modelStack.PushMatrix();
	modelStack.Translate(position.x, position.y, position.z);

	if (this->GetIsZombie())
	{
		Vector3 view = (CPlayerInfo::GetInstance()->GetPos() - position).Normalized();
		float angle = Math::RadianToDegree(atan2(view.x, view.z));
		modelStack.Rotate(angle, 0, 1, 0);
	}
	modelStack.Scale(scale.x, scale.y, scale.z);
	if (GetLODStatus()==true)
	{
		if (theDetailLevel != NO_DETAILS)
			RenderHelper::RenderMesh(GetLODMesh());
	}
	else
		RenderHelper::RenderMesh(modelMesh);
	modelStack.PopMatrix();
}

// Set the maxAABB and minAABB
void GenericEntity::SetAABB(Vector3 maxAABB, Vector3 minAABB)
{
	this->maxAABB = maxAABB;
	this->minAABB = minAABB;
}

GenericEntity* Create::Entity(	const std::string& _meshName, 
								const Vector3& _position,
								const Vector3& _scale)
{
	Mesh* modelMesh = MeshBuilder::GetInstance()->GetMesh(_meshName);
	if (modelMesh == nullptr)
		return nullptr;

	GenericEntity* result = new GenericEntity(modelMesh);
	result->SetPosition(_position);
	result->SetScale(_scale);
	result->SetCollider(false);
	EntityManager::GetInstance()->AddEntity(result, true);
	return result;
}

GenericEntity* Create::Asset(	const std::string& _meshName,
								const Vector3& _position,
								const Vector3& _scale)
{
	Mesh* modelMesh = MeshBuilder::GetInstance()->GetMesh(_meshName);
	if (modelMesh == nullptr)
		return nullptr;

	GenericEntity* result = new GenericEntity(modelMesh);
	result->SetPosition(_position);
	result->SetScale(_scale);
	result->SetCollider(false);
	return result;
}

