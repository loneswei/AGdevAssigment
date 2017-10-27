#ifndef ENTITY_MANAGER_H
#define ENTITY_MANAGER_H

#include "SingletonTemplate.h"
#include <list>
#include "Vector3.h"

class EntityBase;

class EntityManager : public Singleton<EntityManager>
{
	friend Singleton<EntityManager>;
public:
	void Update(double _dt);
	void UpdateList(std::list<EntityBase*> entList, double _dt);
	void Render();
	void RenderSpecificList(std::list<EntityBase*> entList);
	void RenderUI();
	void RenderSpecificListUI(std::list<EntityBase*> entList);

	void AddEntity(EntityBase* _newEntity);
	bool RemoveEntity(EntityBase* _existingEntity);
	bool RemoveSpecificEntity(std::list<EntityBase*> entList, EntityBase* _existingEntity);

private:
	EntityManager();
	virtual ~EntityManager();

	// Check for overlap
	bool CheckOverlap(Vector3 thisMinAABB, Vector3 thisMaxAABB, Vector3 thatMinAABB, Vector3 thatMaxAABB);
	// Check if this entity's bounding sphere collided with that entity's bounding sphere 
	bool CheckSphereCollision(EntityBase *ThisEntity, EntityBase *ThatEntity);
	// Check if this entity collided with another entity, but both must have collider
	bool CheckAABBCollision(EntityBase *ThisEntity, EntityBase *ThatEntity);
	// Check if any Collider is colliding with another Collider
	bool CheckForCollision(void);
	bool CheckForSpecificCollision(std::list<EntityBase*> entList, std::list<EntityBase*> entList2, const bool bPreventSelfCheck = false);

	std::list<EntityBase*> entityList;
	std::list<EntityBase*> fixedEntityList;
	std::list<EntityBase*> characterEntityList;
	std::list<EntityBase*> projectilesEntityList;
};

#endif // ENTITY_MANAGER_H