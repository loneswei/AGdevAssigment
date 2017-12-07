#include "RocketLauncher.h"
#include "../Projectile/Rocket.h"
#include "../SceneGraph/SceneGraph.h"

RocketLauncher::RocketLauncher()
{
}

RocketLauncher::~RocketLauncher()
{
}

void RocketLauncher::Init(void)
{
	CWeaponInfo::Init();

	magRounds = 2;
	maxMagRounds = 2;
	totalRounds = 10;
	maxTotalRounds = 10;

	timeBetweenShots = 3;
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
				10.f,
				_source);
			rocket->SetCollider(false); // collision done in its own update, not in entitymanager so set false
			rocket->SetStatus(true);
			bFire = false;
			magRounds--;
			CSceneGraph::GetInstance()->AddNode(rocket);
		}
	}
}
