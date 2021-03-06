#include "RocketLauncher.h"
#include "../Projectile/Rocket.h"
#include "../SceneGraph/SceneGraph.h"
#include "../Lua/LuaInterface.h"

RocketLauncher::RocketLauncher()
{
}

RocketLauncher::~RocketLauncher()
{
}

void RocketLauncher::Init(void)
{
	CWeaponInfo::Init();

	magRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "rocketMag");
	maxMagRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "rocketMaxMag");
	totalRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "rocketTotal");
	maxTotalRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "rocketMaxTotal");

	timeBetweenShots = (double)CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "rocketTime");
	elapsedTime = 0.0;
	bFire = true;
}

void RocketLauncher::Discharge(Vector3 position, Vector3 target, CPlayerInfo * _source)
{
	if (bFire)
	{
		// If there is still ammo in the magazine, then fire
		if (magRounds > 0)
		{
			Vector3 _direction = (target - position).Normalized();
			// Create a laser with a laser mesh. The length is 10.0f, mesh is also set at 10.0f
			Rocket* rocket = Create::rocket("sphere",
				position,
				_direction,
				10.0f,
				60.f,
				_source);
			rocket->SetCollider(false); // collision done in its own update, not in entitymanager so set false
			rocket->SetStatus(true);
			bFire = false;
			magRounds--;
			CSceneGraph::GetInstance()->AddNode(rocket);
		}
	}
}
