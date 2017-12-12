#pragma once
#include "Vector3.h"
#include "../FPSCamera.h"
#include "../GroundEntity.h"
#include "../WeaponInfo/WeaponInfo.h"
#include "../SceneGraph/SceneNode.h"
#include "../GenericEntity.h"

class CPlayerInfo : public EntityBase
{
protected:
	static CPlayerInfo *s_instance;
	CPlayerInfo(void);

public:
	static CPlayerInfo *GetInstance()
	{
		if (!s_instance)
			s_instance = new CPlayerInfo;
		return s_instance;
	}
	static bool DropInstance()
	{
		if (s_instance)
		{
			delete s_instance;
			s_instance = NULL;
			return true;
		}
		return false;
	}
	~CPlayerInfo(void);

	// Initialise this class instance
	void Init(void);
	// Returns true if the player is on ground
	bool isOnGround(void);
	// Returns true if the player is jumping upwards
	bool isJumpUpwards(void);
	// Returns true if the player is on freefall
	bool isFreeFall(void);
	// Set the player's status to free fall mode
	void SetOnFreeFall(bool isOnFreeFall);
	// Set the player to jumping upwards
	void SetToJumpUpwards(bool isOnJumpUpwards);
	// Stop the player's vertical movement
	void StopVerticalMovement(void);
	// Reset this player instance to default
	void Reset(void);

	void SetPos(const Vector3& pos);
	void SetTarget(const Vector3& target);
	void SetUp(const Vector3& up);
	void SetJumpSpeed(const double m_dJumpSpeed);
	void SetJumpAcceleration(const double m_dJumpAcceleration);
	void SetFallSpeed(const double m_dFallSpeed);
	void SetFallAcceleration(const double m_dFallAcceleration);
	void SetBoundary(Vector3 max, Vector3 min);
	void SetTerrain(GroundEntity* m_pTerrain);

	Vector3 GetPos(void) const;
	Vector3 GetTarget(void) const;
	Vector3 GetUp(void) const;

	double GetJumpSpeed(void) const;
	double GetJumpAcceleration(void) const;
	double GetFallSpeed(void) const;
	double GetFallAcceleration(void) const;
	GroundEntity* GetTerrain(void);

	void UpdateJumpUpwards(double dt = 0.0333f);
	void UpdateFreeFall(double dt = 0.0333f);
	void Update(double dt = 0.0333f);

	// Constrain the position within the borders
	void Constrain(void);

	// Handling Camera
	void AttachCamera(FPSCamera* _cameraPtr);
	void DetachCamera(void);


	// SceneGraph #1 (Picking/Dropping guns)
	void DropGun(CWeaponInfo* &gun);
	void PickUpGun(CWeaponInfo* &gun);

	int GetScore() { return score; }
	void AddScore(int _score);

private:
	Vector3 defaultPosition, defaultTarget, defaultUp;
	Vector3 position, target, up;
	Vector3 maxBoundary, minBoundary;
	GroundEntity* m_pTerrain;

	double m_dSpeed;
	double m_dAcceleration;

	bool m_bJumpUpwards;
	double m_dJumpSpeed;
	double m_dJumpAcceleration;

	double m_dFallSpeed;
	bool m_bFallDownwards;
	double m_dFallAcceleration;

	FPSCamera* attachedCamera;

	CWeaponInfo* primaryWeapon;
	CWeaponInfo* secondaryWeapon;
	GenericEntity* gun1;
	GenericEntity *gun2;

	std::vector<CWeaponInfo*> GunOnGround;

	int score;
};
