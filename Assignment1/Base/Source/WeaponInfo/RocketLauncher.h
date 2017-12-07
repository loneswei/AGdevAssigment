#pragma once
#include "WeaponInfo.h"

class RocketLauncher : public CWeaponInfo
{
public:
	RocketLauncher();
	virtual ~RocketLauncher();

	void Init(void);
	void Discharge(Vector3 position, Vector3 target, CPlayerInfo* _source = NULL);

};
