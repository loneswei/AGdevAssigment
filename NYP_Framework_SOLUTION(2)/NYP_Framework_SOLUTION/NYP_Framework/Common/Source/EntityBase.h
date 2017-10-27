#ifndef ENTITY_BASE_H
#define ENTITY_BASE_H

#include "Vector3.h"

class EntityBase
{
public:
	EntityBase();
	virtual ~EntityBase();

	virtual void Update(double _dt);
	virtual void Render();
	virtual void RenderUI();

	inline void SetPosition(const Vector3& _value){ position = _value; };
	inline Vector3 GetPosition(){ return position; };

	inline void SetScale(const Vector3& _value){ scale = _value; };
	inline Vector3 GetScale(){ return scale; };

	bool IsDone();
	void SetIsDone(const bool _value);

	// Check if this entity has a collider class parent
	virtual bool HasCollider(void) const;
	// Set the flag to indicate if this entity has a collider class parent
	virtual void SetCollider(const bool _value);

	enum type {
		fixed = 0,
		npc,
		projectile,
		NUM_TYPE
	};

	type getEntityType() { return EntityType; }
	void setEntityType(type _newEntityType) { EntityType = _newEntityType; }
protected:
	Vector3 position;
	Vector3 scale;

	bool isDone;
	bool m_bCollider;

	

	type EntityType;
};

#endif // ENTITY_BASE_H