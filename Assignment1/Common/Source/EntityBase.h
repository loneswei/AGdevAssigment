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
	// Set the flag, bLaser
	virtual void SetIsLaser(const bool bLaser);
	// Get the flag, bLaser
	virtual bool GetIsLaser(void) const;

	virtual void SetIsZombie(const bool zombie) { isZombie = zombie; }
	virtual bool GetIsZombie() { return isZombie; }
	virtual void SetZombiePart(const bool zombie) { zombiePart = zombie; }
	virtual bool GetZombiePart() { return zombiePart; }

	virtual void SetIsHuman(bool human) { isHuman = human; }
	virtual bool GetIsHuman() { return isHuman; }
protected:
	Vector3 position;
	Vector3 scale;

	bool isDone;
	bool m_bCollider;
	bool bLaser;

	bool isZombie;
	bool zombiePart;

	bool isHuman;
};

#endif // ENTITY_BASE_H