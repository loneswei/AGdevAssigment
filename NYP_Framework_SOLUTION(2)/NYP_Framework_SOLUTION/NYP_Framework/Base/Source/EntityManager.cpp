#include "EntityManager.h"
#include "EntityBase.h"
#include "Collider/Collider.h"

#include <iostream>
using namespace std;

// Update all entities
void EntityManager::Update(double _dt)
{
	// Update all entities
	UpdateList(fixedEntityList, _dt);
	UpdateList(characterEntityList, _dt);
	UpdateList(projectilesEntityList, _dt);
	UpdateList(entityList, _dt);
}

void EntityManager::UpdateList(std::list<EntityBase*> entList, double _dt)
{
	// Update all entities
	std::list<EntityBase*>::iterator it, end;
	end = entList.end();
	for (it = entList.begin(); it != end; ++it)
	{
		(*it)->Update(_dt);
	}
	//need to seperate all three portions
	//==============================================================================
	// Check for Collision amongst entities with collider properties
	CheckForCollision();
	//==============================================================================
	// Clean up entities that are done
	it = entList.begin();
	while (it != end)
	{
		if ((*it)->IsDone())
		{
			// Delete if done
			delete *it;
			it = entList.erase(it);
		}
		else
		{
			// Move on otherwise
			++it;
		}
	}
}

// Render all entities
void EntityManager::Render()
{
	// Render all entities
	RenderSpecificList(fixedEntityList);
	RenderSpecificList(characterEntityList);
	RenderSpecificList(projectilesEntityList);
	RenderSpecificList(entityList);
}

void EntityManager::RenderSpecificList(std::list<EntityBase*> entList)
{
	std::list<EntityBase*>::iterator it, end;
	end = entList.end();
	for (it = entList.begin(); it != end; ++it)
	{
		(*it)->Render();
	}
}

// Render the UI entities
void EntityManager::RenderUI()
{
	// Render all entities UI
	RenderSpecificListUI(fixedEntityList);
	RenderSpecificListUI(characterEntityList);
	RenderSpecificListUI(projectilesEntityList);
	RenderSpecificListUI(entityList);
}

void EntityManager::RenderSpecificListUI(std::list<EntityBase*> entList)
{
	std::list<EntityBase*>::iterator it, end;
	end = entList.end();
	for (it = entList.begin(); it != end; ++it)
	{
		(*it)->RenderUI();
	}
}

// Add an entity to this EntityManager
void EntityManager::AddEntity(EntityBase* _newEntity)
{
	//entityList.push_back(_newEntity);
	switch (_newEntity->getEntityType())
	{
	case EntityBase::type::fixed:
		fixedEntityList.push_back(_newEntity);
		break;
	case EntityBase::type::npc:
		characterEntityList.push_back(_newEntity);
		break;
	case EntityBase::type::projectile:
		projectilesEntityList.push_back(_newEntity);
		break;
	default:
		entityList.push_back(_newEntity);
		break;
	}
}

// Remove an entity from this EntityManager
bool EntityManager::RemoveEntity(EntityBase* _existingEntity)
{
	// Find the entity's iterator
	switch (_existingEntity->getEntityType())
	{
	case EntityBase::type::fixed:
	{
		RemoveSpecificEntity(fixedEntityList, _existingEntity);
		break;
	}
	case EntityBase::type::npc:
	{
		RemoveSpecificEntity(characterEntityList, _existingEntity);
		break;
	}
	case EntityBase::type::projectile:
	{
		RemoveSpecificEntity(projectilesEntityList, _existingEntity);
		break;
	}
	default:
		RemoveSpecificEntity(entityList, _existingEntity);
		break;
	}
	// Return false if not found
	return false;
}

bool EntityManager::RemoveSpecificEntity(std::list<EntityBase*> entList, EntityBase* _existingEntity)
{
	std::list<EntityBase*>::iterator findIter = std::find(entList.begin(), entList.end(), _existingEntity);

	// Delete the entity if found
	if (findIter != entList.end())
	{
		delete *findIter;
		findIter = entList.erase(findIter);
		return true;	
	}
	return false;
}

// Constructor
EntityManager::EntityManager()
{
}

// Destructor
EntityManager::~EntityManager()
{
}

// Check for overlap
bool EntityManager::CheckOverlap(Vector3 thisMinAABB, Vector3 thisMaxAABB, Vector3 thatMinAABB, Vector3 thatMaxAABB)
{	
	// Check if this object is overlapping that object
	/*
	if (((thatMinAABB.x >= thisMinAABB.x) && (thatMinAABB.x <= thisMaxAABB.x) &&
	(thatMinAABB.y >= thisMinAABB.y) && (thatMinAABB.y <= thisMaxAABB.y) &&
	(thatMinAABB.z >= thisMinAABB.z) && (thatMinAABB.z <= thisMaxAABB.z))
	||
	((thatMaxAABB.x >= thisMinAABB.x) && (thatMaxAABB.x <= thisMaxAABB.x) &&
	(thatMaxAABB.y >= thisMinAABB.y) && (thatMaxAABB.y <= thisMaxAABB.y) &&
	(thatMaxAABB.z >= thisMinAABB.z) && (thatMaxAABB.z <= thisMaxAABB.z)))
	*/
	if (((thatMinAABB >= thisMinAABB) && (thatMinAABB <= thisMaxAABB))
		||
		((thatMaxAABB >= thisMinAABB) && (thatMaxAABB <= thisMaxAABB)))
	{
		return true;
	}

	// Check if that object is overlapping this object
	/*
	if (((thisMinAABB.x >= thatMinAABB.x) && (thisMinAABB.x <= thatMaxAABB.x) &&
	(thisMinAABB.y >= thatMinAABB.y) && (thisMinAABB.y <= thatMaxAABB.y) &&
	(thisMinAABB.z >= thatMinAABB.z) && (thisMinAABB.z <= thatMaxAABB.z))
	||
	((thisMaxAABB.x >= thatMinAABB.x) && (thisMaxAABB.x <= thatMaxAABB.x) &&
	(thisMaxAABB.y >= thatMinAABB.y) && (thisMaxAABB.y <= thatMaxAABB.y) &&
	(thisMaxAABB.z >= thatMinAABB.z) && (thisMaxAABB.z <= thatMaxAABB.z)))
	*/
	if (((thisMinAABB >= thatMinAABB) && (thisMinAABB <= thatMaxAABB))
		||
		((thisMaxAABB >= thatMinAABB) && (thisMaxAABB <= thatMaxAABB)))
	{
		return true;
	}

	// Check if this object is within that object
	/*
	if (((thisMinAABB.x >= thatMinAABB.x) && (thisMaxAABB.x <= thatMaxAABB.x) &&
	(thisMinAABB.y >= thatMinAABB.y) && (thisMaxAABB.y <= thatMaxAABB.y) &&
	(thisMinAABB.z >= thatMinAABB.z) && (thisMaxAABB.z <= thatMaxAABB.z))
	&&
	((thisMaxAABB.x >= thatMinAABB.x) && (thisMaxAABB.x <= thatMaxAABB.x) &&
	(thisMaxAABB.y >= thatMinAABB.y) && (thisMaxAABB.y <= thatMaxAABB.y) &&
	(thisMaxAABB.z >= thatMinAABB.z) && (thisMaxAABB.z <= thatMaxAABB.z)))
	*/
	if (((thisMinAABB >= thatMinAABB) && (thisMaxAABB <= thatMaxAABB))
		&&
		((thisMaxAABB >= thatMinAABB) && (thisMaxAABB <= thatMaxAABB)))
		return true;

	// Check if that object is within this object
	/*
	if (((thatMinAABB.x >= thisMinAABB.x) && (thatMinAABB.x <= thisMaxAABB.x) &&
	(thatMinAABB.y >= thisMinAABB.y) && (thatMinAABB.y <= thisMaxAABB.y) &&
	(thatMinAABB.z >= thisMinAABB.z) && (thatMinAABB.z <= thisMaxAABB.z))
	&&
	((thatMaxAABB.x >= thisMinAABB.x) && (thatMaxAABB.x <= thisMaxAABB.x) &&
	(thatMaxAABB.y >= thisMinAABB.y) && (thatMaxAABB.y <= thisMaxAABB.y) &&
	(thatMaxAABB.z >= thisMinAABB.z) && (thatMaxAABB.z <= thisMaxAABB.z)))
	*/
	if (((thatMinAABB >= thisMinAABB) && (thatMinAABB <= thisMaxAABB))
		&&
		((thatMaxAABB >= thisMinAABB) && (thatMaxAABB <= thisMaxAABB)))
		return true;

	return false;
}

// Check if this entity's bounding sphere collided with that entity's bounding sphere 
bool EntityManager::CheckSphereCollision(EntityBase *ThisEntity, EntityBase *ThatEntity)
{
	// Get the colliders for the 2 entities
	CCollider *thisCollider = dynamic_cast<CCollider*>(ThisEntity);
	CCollider *thatCollider = dynamic_cast<CCollider*>(ThatEntity);

	// Get the minAABB and maxAABB for each entity
	Vector3 thisMinAABB = ThisEntity->GetPosition() + thisCollider->GetMinAABB();
	Vector3 thisMaxAABB = ThisEntity->GetPosition() + thisCollider->GetMaxAABB();
	Vector3 thatMinAABB = ThatEntity->GetPosition() + thatCollider->GetMinAABB();
	Vector3 thatMaxAABB = ThatEntity->GetPosition() + thatCollider->GetMaxAABB();

	// if Radius of bounding sphere of ThisEntity plus Radius of bounding sphere of ThatEntity is 
	// greater than the distance squared between the 2 reference points of the 2 entities,
	// then it could mean that they are colliding with each other.
	if (DistanceSquaredBetween(thisMinAABB, thisMaxAABB) + DistanceSquaredBetween(thatMinAABB, thatMaxAABB) >
		DistanceSquaredBetween(ThisEntity->GetPosition(), ThatEntity->GetPosition()))
	{
		return true;
	}

	return false;
}

// Check if this entity collided with another entity, but both must have collider
bool EntityManager::CheckAABBCollision(EntityBase *ThisEntity, EntityBase *ThatEntity)
{
	// Get the colliders for the 2 entities
	CCollider *thisCollider = dynamic_cast<CCollider*>(ThisEntity);
	CCollider *thatCollider = dynamic_cast<CCollider*>(ThatEntity);

	// Get the minAABB and maxAABB for each entity
	Vector3 thisMinAABB = ThisEntity->GetPosition() + thisCollider->GetMinAABB();
	Vector3 thisMaxAABB = ThisEntity->GetPosition() + thisCollider->GetMaxAABB();
	Vector3 thatMinAABB = ThatEntity->GetPosition() + thatCollider->GetMinAABB();
	Vector3 thatMaxAABB = ThatEntity->GetPosition() + thatCollider->GetMaxAABB();

	// Check for overlap
	if (CheckOverlap(thisMinAABB, thisMaxAABB, thatMinAABB, thatMaxAABB))
		return true;

	// if AABB collision check fails, then we need to check the other corners of the bounding boxes to 
	// Do more collision checks with other points on each bounding box
	Vector3 altThisMinAABB = Vector3(thisMinAABB.x, thisMinAABB.y, thisMaxAABB.z);
	Vector3 altThisMaxAABB = Vector3(thisMaxAABB.x, thisMaxAABB.y, thisMinAABB.z);
//	Vector3 altThatMinAABB = Vector3(thatMinAABB.x, thatMinAABB.y, thatMaxAABB.z);
//	Vector3 altThatMaxAABB = Vector3(thatMaxAABB.x, thatMaxAABB.y, thatMinAABB.z);

	// Check for overlap
	if (CheckOverlap(altThisMinAABB, altThisMaxAABB, thatMinAABB, thatMaxAABB))
		return true;

	return false;
}

// Check if any Collider is colliding with another Collider
bool EntityManager::CheckForCollision(void)
{
	// Check for Collision
	// Character with fixed and character
	//CheckForSpecificCollision(characterEntityList, fixedEntityList);
	//CheckForSpecificCollision(characterEntityList, characterEntityList, true);

	//// Projectiles with character and fixed
	//CheckForSpecificCollision(projectilesEntityList, characterEntityList);
	//CheckForSpecificCollision(projectilesEntityList, fixedEntityList);
	return false;
}

bool EntityManager::CheckForSpecificCollision(std::list<EntityBase*> entList, std::list<EntityBase*> entList2, const bool bPreventSelfCheck)
{
	std::list<EntityBase*>::iterator colliderThis, colliderThisEnd;
	std::list<EntityBase*>::iterator colliderThat, colliderThatEnd;

	colliderThisEnd = entList.end();
	for (colliderThis = entList.begin(); colliderThis != colliderThisEnd; ++colliderThis)
	{
		if ((*colliderThis)->HasCollider())
		{
			// This object was derived from a CCollider class, then it will have Collision Detection methods
			//CCollider *thisCollider = dynamic_cast<CCollider*>(*colliderThis);
			EntityBase *thisEntity = dynamic_cast<EntityBase*>(*colliderThis);

			// Check for collision with another collider class
			colliderThatEnd = entList2.end();
			int counter = 0;
			if (bPreventSelfCheck)
			{
				for (colliderThat = colliderThis; colliderThat != colliderThatEnd; ++colliderThat)
				{
					if (colliderThat == colliderThis)
						continue;

					if ((*colliderThat)->HasCollider())
					{
						// This object was derived from a CCollider class, then it will have Collision Detection methods
						EntityBase *thatEntity = dynamic_cast<EntityBase*>(*colliderThat);
						if (CheckSphereCollision(thisEntity, thatEntity) == true)
						{
							if (CheckAABBCollision(thisEntity, thatEntity) == true)
							{
								thisEntity->SetIsDone(true);
								thatEntity->SetIsDone(true);
							}
						}
					}
				}
			}
			else
			{
				for (colliderThat = entList2.begin(); colliderThat != colliderThatEnd; ++colliderThat)
				{
					if ((*colliderThat)->HasCollider())
					{
						// This object was derived from a CCollider class, then it will have Collision Detection methods
						EntityBase *thatEntity = dynamic_cast<EntityBase*>(*colliderThat);
						if (CheckSphereCollision(thisEntity, thatEntity) == true)
						{
							if (CheckAABBCollision(thisEntity, thatEntity) == true)
							{
								thisEntity->SetIsDone(true);
								thatEntity->SetIsDone(true);
							}
						}
					}
				}
			}
		}
	}
	return false;
}
