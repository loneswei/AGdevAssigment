#include "Human.h"

void Human::Init()
{
	//creation of human
	position = Vector3(Math::RandIntMinMax(-400, 400), 0, Math::RandIntMinMax(-400, 400));
	scale = Vector3(5, 5, 5);
	InitLOD("humanhigh", "humanmed", "humanlow");
	SetCollider(true);
	SetAABB(Vector3(6, 7.5f, 5), Vector3(-6, -7.5f, -5));
	SetIsHuman(true);
	EntityManager::GetInstance()->AddEntity(this, true);
}

// human inherits from cenemy, if we dun put an empty update func, will call cenemy update...
// initially we wanted to make human move, so we inherit from cenemy, should have just made it as a genericentity...
void Human::Update(double dt)
{
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
