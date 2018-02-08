#include "LaserBlaster.h"
#include "../Projectile/Laser.h"
#include "MeshBuilder.h"
#include "../EntityManager.h"
#include "../Lua/LuaInterface.h"

CLaserBlaster::CLaserBlaster()
{
}


CLaserBlaster::~CLaserBlaster()
{
}

// Initialise this instance to default values
void CLaserBlaster::Init(void)
{
	// Call the parent's Init method
	CWeaponInfo::Init();

	// The number of ammunition in a magazine for this weapon
	magRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "laserMag");
	// The maximum number of ammunition for this magazine for this weapon
	maxMagRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "laserMaxMag");
	// The current total number of rounds currently carried by this player
	totalRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "laserTotal");
	// The max total number of rounds currently carried by this player
	maxTotalRounds = CLuaInterface::GetInstance()->getIntValue(CLuaInterface::GetInstance()->theWeaponInfoState, "laserMaxTotal");

	// The time between shots
	timeBetweenShots = (double)CLuaInterface::GetInstance()->getFloatValue(CLuaInterface::GetInstance()->theWeaponInfoState, "laserTime");
	// The elapsed time (between shots)
	elapsedTime = 0.0;
	// Boolean flag to indicate if weapon can fire now
	bFire = true;
}

// Discharge this weapon
void CLaserBlaster::Discharge(Vector3 position, Vector3 target, CPlayerInfo* _source)
{
	if (bFire)
	{
		// If there is still ammo in the magazine, then fire
		if (magRounds > 0)
		{
			Vector3 _direction = (target - position).Normalized();
			// Create a laser with a laser mesh. The length is 10.0f, mesh is also set at 10.0f
			CLaser* aLaser = Create::Laser("laser",
											position,
											_direction,
											10.0f,
											2.0f,
											100.0f,
											_source);
			aLaser->SetIsLaser(true);
			aLaser->SetCollider(false);
			//aLaser->SetCollider(true);
			//aLaser->SetAABB(Vector3(0.5f, 0.5f, 0.5f), Vector3(-0.5f, -0.5f, -0.5f));
			bFire = false;
			magRounds--;
		}
	}
}
