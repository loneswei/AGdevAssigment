#include "PlayerInfo.h"
#include <iostream>

#include "MouseController.h"
#include "KeyboardController.h"
#include "Mtx44.h"
#include "../Projectile/Projectile.h"
#include "../WeaponInfo/Pistol.h"
#include "../WeaponInfo/LaserBlaster.h"
#include "../WeaponInfo/GrenadeThrow.h"
#include"../WeaponInfo/RocketLauncher.h"
#include "../EntityManager.h"
#include "../SceneGraph/SceneGraph.h"
#include "../Lua/LuaInterface.h"

// Allocating and initializing CPlayerInfo's static data member.  
// The pointer is allocated but not the object's constructor.
CPlayerInfo *CPlayerInfo::s_instance = 0;

CPlayerInfo::CPlayerInfo(void)
	: m_dSpeed(40.0)
	, m_dAcceleration(10.0)
	, m_bJumpUpwards(false)
	, m_dJumpSpeed(10.0)
	, m_dJumpAcceleration(-10.0)
	, m_bFallDownwards(false)
	, m_dFallSpeed(0.0)
	, m_dFallAcceleration(-10.0)
	, attachedCamera(NULL)
	, m_pTerrain(NULL)
	, primaryWeapon(NULL)
	, secondaryWeapon(NULL)
	, lua(nullptr)
	, gun1(nullptr), gun2(nullptr)
	, score(0), shoot(false)
	, playerLose(false)
	, spActive(true)
	, keyMoveForward('W'), keyMoveBackward('S'), keyMoveLeft('A'), keyMoveRight('D')
	, keyDropPriWeapon('H'), keyReload('R'), keyJump(' '), keyShootPri('L'), keyShootSec('M')
	, keyPickUpWeapon('G'), keyDropSecWeapon('T')

{	  
}	  

CPlayerInfo::~CPlayerInfo(void)
{
	if (secondaryWeapon)
	{
		delete secondaryWeapon;
		secondaryWeapon = NULL;
	}
	if (primaryWeapon)
	{
		delete primaryWeapon;
		primaryWeapon = NULL;
	}
	m_pTerrain = NULL;

	if (gun1)
	{
		delete gun1;
		gun1 = nullptr;
	}
	if (gun2)
	{
		delete gun2;
		gun2 = nullptr;
	}
}

// Initialise this class instance
void CPlayerInfo::Init(void)
{
	lua = CLuaInterface::GetInstance();
	// Set the default values
	defaultPosition = lua->getVector3Values(lua->theLuaState, "CPlayerInfoStartPos");
	defaultTarget.Set(0,0,0);
	defaultUp.Set(0,1,0);

	// Set the current values
	position = lua->getVector3Values(lua->theLuaState, "CPlayerInfoStartPos");
	target.Set(0, 0, 0);
	up.Set(0, 1, 0);

	// Set Boundary
	maxBoundary.Set(1,1,1);
	minBoundary.Set(-1, -1, -1);

	// Set the pistol as the primary weapon
	primaryWeapon = new CLaserBlaster();
	primaryWeapon->Init();
	// Set the laser blaster as the secondary weapon
	//secondaryWeapon = new CLaserBlaster();
	//secondaryWeapon->Init();
	secondaryWeapon = new RocketLauncher();
	secondaryWeapon->Init();

	keyMoveForward = CheckSpecialKey(lua->getStringValue(lua->theControlState, "moveForward"));
	keyMoveBackward = CheckSpecialKey(lua->getStringValue(lua->theControlState,"moveBackward"));
	keyMoveLeft = CheckSpecialKey(lua->getStringValue(lua->theControlState,"moveLeft"));
	keyMoveRight = CheckSpecialKey(lua->getStringValue(lua->theControlState, "moveRight"));
	keyReload = CheckSpecialKey(lua->getStringValue(lua->theControlState, "reload"));
	keyJump = CheckSpecialKey(lua->getStringValue(lua->theControlState, "jump"));
	keyDropPriWeapon = CheckSpecialKey(lua->getStringValue(lua->theControlState, "dropprimary"));
	keyDropSecWeapon = CheckSpecialKey(lua->getStringValue(lua->theControlState, "dropsecondary"));
	keyPickUpWeapon = CheckSpecialKey(lua->getStringValue(lua->theControlState, "pickupgun"));
	keyShootPri = CheckSpecialKey(lua->getStringValue(lua->theControlState, "shootprimary"));
	keyShootSec = CheckSpecialKey(lua->getStringValue(lua->theControlState, "shootsecondary"));

	float distanceSquare = lua->getDistanceSquareValue("CalculateDistanceSquare", Vector3(0, 0, 0), Vector3(10, 10, 10));

	int a = 1000, b = 2000, c = 3000, d = 4000;
	lua->getVariableValues(lua->theLuaState, "GetMinMax", a, b, c, d);
}

// Returns true if the player is on ground
bool CPlayerInfo::isOnGround(void)
{
	if (m_bJumpUpwards == false && m_bFallDownwards == false)
		return true;

	return false;
}

// Returns true if the player is jumping upwards
bool CPlayerInfo::isJumpUpwards(void)
{
	if (m_bJumpUpwards == true && m_bFallDownwards == false)
		return true;

	return false;
}

// Returns true if the player is on freefall
bool CPlayerInfo::isFreeFall(void)
{
	if (m_bJumpUpwards == false && m_bFallDownwards == true)
		return true;

	return false;
}

// Set the player's status to free fall mode
void CPlayerInfo::SetOnFreeFall(bool isOnFreeFall)
{
	if (isOnFreeFall == true)
	{
		m_bJumpUpwards = false;
		m_bFallDownwards = true;
		m_dFallSpeed = 0.0;
	}
}

// Set the player to jumping upwards
void CPlayerInfo::SetToJumpUpwards(bool isOnJumpUpwards)
{
	if (isOnJumpUpwards == true)
	{
		m_bJumpUpwards = true;
		m_bFallDownwards = false;
		m_dJumpSpeed = 4.0;
	}
}

// Set position
void CPlayerInfo::SetPos(const Vector3& pos)
{
	position = pos;
}

// Set target
void CPlayerInfo::SetTarget(const Vector3& target)
{
	this->target = target;
}

// Set position
void CPlayerInfo::SetUp(const Vector3& up)
{
	this->up = up;
}

// Set m_dJumpAcceleration of the player
void CPlayerInfo::SetJumpAcceleration(const double m_dJumpAcceleration)
{
	this->m_dJumpAcceleration = m_dJumpAcceleration;
}

// Set Fall Acceleration of the player
void CPlayerInfo::SetFallAcceleration(const double m_dFallAcceleration)
{
	this->m_dFallAcceleration = m_dFallAcceleration;
}

// Set the boundary for the player info
void CPlayerInfo::SetBoundary(Vector3 max, Vector3 min)
{
	maxBoundary = max;
	minBoundary = min;
}

// Set the terrain for the player info
void CPlayerInfo::SetTerrain(GroundEntity* m_pTerrain)
{
	if (m_pTerrain != NULL)
	{
		this->m_pTerrain = m_pTerrain;

		SetBoundary(this->m_pTerrain->GetMaxBoundary(), this->m_pTerrain->GetMinBoundary());
	}
}

// Stop the player's movement
void CPlayerInfo::StopVerticalMovement(void)
{
	m_bJumpUpwards = false;
	m_bFallDownwards = false;
}

// Reset this player instance to default
void CPlayerInfo::Reset(void)
{
	// Set the current values to default values
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;

	// Stop vertical movement too
	StopVerticalMovement();
}

// Get position x of the player
Vector3 CPlayerInfo::GetPos(void) const
{
	return position;
}

// Get target
Vector3 CPlayerInfo::GetTarget(void) const
{
	return target;
}
// Get Up
Vector3 CPlayerInfo::GetUp(void) const
{
	return up;
}

// Get m_dJumpAcceleration of the player
double CPlayerInfo::GetJumpAcceleration(void) const
{
	return m_dJumpAcceleration;
}

// Get the terrain for the player info
GroundEntity* CPlayerInfo::GetTerrain(void)
{
	return m_pTerrain;
}

// Update Jump Upwards
void CPlayerInfo::UpdateJumpUpwards(double dt)
{
	if (m_bJumpUpwards == false)
		return;

	// Update position and target y values
	// Use SUVAT equation to update the change in position and target
	// s = u * t + 0.5 * a * t ^ 2
	position.y += (float)(m_dJumpSpeed * dt + 0.5 * m_dJumpAcceleration * dt * dt);
	target.y += (float)(m_dJumpSpeed*dt + 0.5 * m_dJumpAcceleration * dt * dt);
	// Use this equation to calculate final velocity, v
	// SUVAT: v = u + a * t;
	// v is m_dJumpSpeed AFTER updating using SUVAT where u is the initial speed and is equal to m_dJumpSpeed
	m_dJumpSpeed = m_dJumpSpeed + m_dJumpAcceleration * dt;
	// Check if the jump speed is less than zero, then it should be falling
	if (m_dJumpSpeed < 0.0)
	{
		m_dJumpSpeed = 0.0;
		m_bJumpUpwards = false;
		m_dFallSpeed = 0.0;
		m_bFallDownwards = true;
	}
}

// Update FreeFall
void CPlayerInfo::UpdateFreeFall(double dt)
{
	if (m_bFallDownwards == false)
		return;

	// Update position and target y values
	// Use SUVAT equation to update the change in position and target
	// s = u * t + 0.5 * a * t ^ 2
	position.y += (float)(m_dFallSpeed * dt + 0.5 * m_dJumpAcceleration * dt * dt);
	target.y += (float)(m_dFallSpeed * dt + 0.5 * m_dJumpAcceleration * dt * dt);
	// Use this equation to calculate final velocity, v
	// SUVAT: v = u + a * t;
	// v is m_dJumpSpeed AFTER updating using SUVAT where u is the initial speed and is equal to m_dJumpSpeed
	m_dFallSpeed = m_dFallSpeed + m_dFallAcceleration * dt;
	// Check if the jump speed is below terrain, then it should be reset to terrain height
	if (position.y < m_pTerrain->GetTerrainHeight(position))
	{
		Vector3 viewDirection = target - position;
		position.y = m_pTerrain->GetTerrainHeight(position);
		target = position + viewDirection;
		m_dFallSpeed = 0.0;
		m_bFallDownwards = false;
	}
}

/********************************************************************************
 Hero Update
 ********************************************************************************/
void CPlayerInfo::Update(double dt)
{
	double mouse_diff_x, mouse_diff_y;
	MouseController::GetInstance()->GetMouseDelta(mouse_diff_x, mouse_diff_y);

	double camera_yaw = mouse_diff_x * 0.0174555555555556;		// 3.142 / 180.0
	double camera_pitch = mouse_diff_y * 0.0174555555555556;	// 3.142 / 180.0

	// Update the position if the WASD buttons were activated
	if (KeyboardController::GetInstance()->IsKeyDown(keyMoveForward) ||
		KeyboardController::GetInstance()->IsKeyDown(keyMoveLeft) ||
		KeyboardController::GetInstance()->IsKeyDown(keyMoveBackward) ||
		KeyboardController::GetInstance()->IsKeyDown(keyMoveRight))
	{
		Vector3 viewVector = target - position;
		Vector3 rightUV;
		Vector3 tempPos = position;	// store the player position in a temp variable for calculations
		bool hasCollider = false, canMove = false;
		if (KeyboardController::GetInstance()->IsKeyDown(keyMoveForward))
		{
			// simulate the player position 
			tempPos += viewVector.Normalized() * (float)m_dSpeed * (float)dt;
			// get objects in player grid
			vector<EntityBase*> playerGridObj = CSpatialPartition::GetInstance()->GetObjects(this->position, 1.f);
			for (int i = 0; i < playerGridObj.size(); ++i)
			{
				// prevents unnecessary checking (self checking, checking with null and done objs)
				if (playerGridObj[i] == this || !playerGridObj[i])	
					continue;
				if (playerGridObj[i]->IsDone())
					continue;

				if (playerGridObj[i]->HasCollider())
				{
					hasCollider = true;
					// our player is not an object but a point in the map, so use ptaabb coll
					if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, playerGridObj[i]))
					{
						canMove = false;
						break;
					}
					else
						canMove = true;
				}
				else
					hasCollider = false;
			}
			// if meet the conditions, allow player to move
			if ((hasCollider && canMove) || !hasCollider)
				position += viewVector.Normalized() * (float)m_dSpeed * (float)dt;
		}
		else if (KeyboardController::GetInstance()->IsKeyDown(keyMoveBackward))
		{
			// same as the 'W' movement
			tempPos -= viewVector.Normalized() * (float)m_dSpeed * (float)dt;
			
			vector<EntityBase*>playerGridObj = CSpatialPartition::GetInstance()->GetObjects(this->position, 1);
			for (int i = 0; i < playerGridObj.size(); ++i)
			{
				if (playerGridObj[i] == this || !playerGridObj[i])
					continue;
				if (playerGridObj[i]->IsDone())
					continue;

				if (playerGridObj[i]->HasCollider())
				{
					hasCollider = true;
					if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, playerGridObj[i]))
					{
						canMove = false;
						break;
					}
					else
						canMove = true;
				}
				else
					hasCollider = false;
			}
			if ((hasCollider && canMove) || !hasCollider)
				position -= viewVector.Normalized() * (float)m_dSpeed * (float)dt;
		}
		if (KeyboardController::GetInstance()->IsKeyDown(keyMoveLeft))
		{
			rightUV = (viewVector.Normalized()).Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();

			// same as the 'W' movement
			tempPos -= rightUV * (float)m_dSpeed * (float)dt;
			vector<EntityBase*>playerGridObj = CSpatialPartition::GetInstance()->GetObjects(this->position, 1);
			for (int i = 0; i < playerGridObj.size(); ++i)
			{
				if (playerGridObj[i] == this || !playerGridObj[i])
					continue;
				if (playerGridObj[i]->IsDone())
					continue;
				if (playerGridObj[i]->HasCollider())
				{
					hasCollider = true;
					if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, playerGridObj[i]))
					{
						canMove = false;
						break;
					}
					else
						canMove = true;
				}
				else
					hasCollider = false;
			}
		
			if ((hasCollider && canMove) || !hasCollider)
				position -= rightUV * (float)m_dSpeed * (float)dt;
		}
		else if (KeyboardController::GetInstance()->IsKeyDown(keyMoveRight))
		{
			rightUV = (viewVector.Normalized()).Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();

			// same as the 'W' movement
			tempPos += rightUV * (float)m_dSpeed * (float)dt;
			vector<EntityBase*>playerGridObj = CSpatialPartition::GetInstance()->GetObjects(this->position, 1);
			
			for (int i=0;i<playerGridObj.size();++i)
			{
				if (playerGridObj[i] == this || !playerGridObj[i])
					continue;
				if (playerGridObj[i]->IsDone())
					continue;

				if (playerGridObj[i]->HasCollider())
				{
					hasCollider = true;
					if (EntityManager::GetInstance()->PointToAABBCollision(tempPos, playerGridObj[i]))
					{
						canMove = false;
						break;
					}
					else
						canMove = true;
				}
				else
					hasCollider = false;
			}
			if ((hasCollider && canMove) || !hasCollider)
				position += rightUV * (float)m_dSpeed * (float)dt;
		}
		// Constrain the position
		Constrain();
		// Update the target
		target = position + viewVector;
	}

	// Rotate the view direction
	if (KeyboardController::GetInstance()->IsKeyDown(VK_LEFT) ||
		KeyboardController::GetInstance()->IsKeyDown(VK_RIGHT) ||
		KeyboardController::GetInstance()->IsKeyDown(VK_UP) ||
		KeyboardController::GetInstance()->IsKeyDown(VK_DOWN))
	{
		Vector3 viewUV = (target - position).Normalized();
		Vector3 rightUV;
		if (KeyboardController::GetInstance()->IsKeyDown(VK_LEFT))
		{
			float yaw = (float)m_dSpeed * (float)dt;
			Mtx44 rotation;
			rotation.SetToRotation(yaw, 0, 1, 0);
			viewUV = rotation * viewUV;
			target = position + viewUV;
			rightUV = viewUV.Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();
			up = rightUV.Cross(viewUV).Normalized();
		}
		else if (KeyboardController::GetInstance()->IsKeyDown(VK_RIGHT))
		{
			float yaw = (float)(-m_dSpeed * (float)dt);
			Mtx44 rotation;
			rotation.SetToRotation(yaw, 0, 1, 0);
			viewUV = rotation * viewUV;
			target = position + viewUV;
			rightUV = viewUV.Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();
			up = rightUV.Cross(viewUV).Normalized();
		}
		if (KeyboardController::GetInstance()->IsKeyDown(VK_UP))
		{
			float pitch = (float)(m_dSpeed * (float)dt);
			rightUV = viewUV.Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();
			up = rightUV.Cross(viewUV).Normalized();
			Mtx44 rotation;
			rotation.SetToRotation(pitch, rightUV.x, rightUV.y, rightUV.z);
			viewUV = rotation * viewUV;
			target = position + viewUV;
		}
		else if (KeyboardController::GetInstance()->IsKeyDown(VK_DOWN))
		{
			float pitch = (float)(-m_dSpeed * (float)dt);
			rightUV = viewUV.Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();
			up = rightUV.Cross(viewUV).Normalized();
			Mtx44 rotation;
			rotation.SetToRotation(pitch, rightUV.x, rightUV.y, rightUV.z);
			viewUV = rotation * viewUV;
			target = position + viewUV;
		}
	}

	//Update the camera direction based on mouse move
	{
		Vector3 viewUV = (target - position).Normalized();
		Vector3 rightUV;

		{
			float yaw = (float)(-m_dSpeed * camera_yaw * (float)dt);
			Mtx44 rotation;
			rotation.SetToRotation(yaw, 0, 1, 0);
			viewUV = rotation * viewUV;
			target = position + viewUV;
			rightUV = viewUV.Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();
			up = rightUV.Cross(viewUV).Normalized();
		}
		{
			float pitch = (float)(-m_dSpeed * camera_pitch * (float)dt);
			rightUV = viewUV.Cross(up);
			rightUV.y = 0;
			rightUV.Normalize();
			up = rightUV.Cross(viewUV).Normalized();
			Mtx44 rotation;
			rotation.SetToRotation(pitch, rightUV.x, rightUV.y, rightUV.z);
			viewUV = rotation * viewUV;
			target = position + viewUV;
		}
	}

	// If the user presses SPACEBAR, then make him jump
	if (KeyboardController::GetInstance()->IsKeyDown(keyJump) &&
		position.y == m_pTerrain->GetTerrainHeight(position))
	{
		SetToJumpUpwards(true);
	}

	// Update the weapons
	if (KeyboardController::GetInstance()->IsKeyReleased(keyReload))
	{
		if (primaryWeapon)
		{
			primaryWeapon->Reload();
			//primaryWeapon->PrintSelf();
		}
		if (secondaryWeapon)
		{
			secondaryWeapon->Reload();
			//secondaryWeapon->PrintSelf();
		}
	}
	if (primaryWeapon)
		primaryWeapon->Update(dt);
	if (secondaryWeapon)
		secondaryWeapon->Update(dt);

	// if Mouse Buttons were activated, then act on them
	if (MouseController::GetInstance()->IsButtonPressed(keyShootPri))
	{
		if (primaryWeapon)
			primaryWeapon->Discharge(position, target, this);
	}
	else if (MouseController::GetInstance()->IsButtonPressed(keyShootSec))
	{
		if (secondaryWeapon)
			secondaryWeapon->Discharge(position, target, this);
	}

	// If the user presses R key, then reset the view to default values
	if (KeyboardController::GetInstance()->IsKeyDown('P'))
	{
		Reset();
	}
	else
	{
		UpdateJumpUpwards(dt);
		UpdateFreeFall(dt);
	}

	// If a camera is attached to this playerInfo class, then update it
	if (attachedCamera)
	{
		attachedCamera->SetCameraPos(position);
		attachedCamera->SetCameraTarget(target);
		attachedCamera->SetCameraUp(up);
	}

	//---- Scenegraph Feature #1---- ~MarcusTan
	// Pick Up Gun
	if (!GunOnGround.empty())	// if there is agun on ground
	{
		for (int i = 0; i < GunOnGround.size(); ++i)
		{
			// check with every gun on ground
			Vector3 dist = DistanceSquaredBetween(GunOnGround[i]->GetPosition(), this->position);
			if (dist < 100)	// if player close to the gun, allow him to potentially pick up the gun
				if (KeyboardController::GetInstance()->IsKeyReleased(keyPickUpWeapon))
					PickUpGun(GunOnGround[i]);
		}
	}
	// Drop Gun
	if (KeyboardController::GetInstance()->IsKeyReleased(keyDropPriWeapon))
		DropGun(primaryWeapon);
	if (KeyboardController::GetInstance()->IsKeyReleased(keyDropSecWeapon))
		DropGun(secondaryWeapon);

	// ------------------------------------------------

	if (KeyboardController::GetInstance()->IsKeyReleased(VK_LSHIFT))
	{
		if (spActive)
			spActive = false;
		else
			spActive = true;
	}


}

// Constrain the position within the borders
void CPlayerInfo::Constrain(void)
{
	// Constrain player within the boundary
	if (position.x > maxBoundary.x - 1.0f)
		position.x = maxBoundary.x - 1.0f;
	if (position.z > maxBoundary.z - 1.0f)
		position.z = maxBoundary.z - 1.0f;
	if (position.x < minBoundary.x + 1.0f)
		position.x = minBoundary.x + 1.0f;
	if (position.z < minBoundary.z + 1.0f)
		position.z = minBoundary.z + 1.0f;

	// if the player is not jumping nor falling, then adjust his y position
	if ((m_bJumpUpwards == false) && (m_bFallDownwards == false))
	{
		// if the y position is not equal to terrain height at that position, 
		// then update y position to the terrain height
		if (position.y != m_pTerrain->GetTerrainHeight(position))
			position.y = m_pTerrain->GetTerrainHeight(position);
	}
}

void CPlayerInfo::AttachCamera(FPSCamera* _cameraPtr)
{
	attachedCamera = _cameraPtr;
}

void CPlayerInfo::DetachCamera()
{
	attachedCamera = nullptr;
}


// Scenegraph Feature #1 -  Pick/Drop gun ~MarcusTan
void CPlayerInfo::DropGun(CWeaponInfo* &gun)
{
	if (gun == nullptr)
		return;

	//playerNode->DetachChild(gun);
	// add the dropped gun to the scenegraph 
	CSceneGraph::GetInstance()->AddNode(gun);
	GunOnGround.push_back(gun);

	// drop the gun onto the ground
	gun->SetPosition(Vector3(this->position.x, m_pTerrain->GetTerrainHeight(position) -5, this->position.z));

	// drop gun means player does not have the gun anymore
	if (gun == primaryWeapon)
	{
		gun = nullptr;
		// create a reference entity to allow player to find the gun... , ps could have find better objs 
		// the position is on the ground where the player drop gun 
		gun1 = Create::Entity("cube", Vector3(this->position.x, m_pTerrain->GetTerrainHeight(position) - 10, this->position.z));
	}
	else if (gun == secondaryWeapon)
	{
		// read above
		gun = nullptr;
		gun2 = Create::Entity("cubeSG", Vector3(this->position.x, m_pTerrain->GetTerrainHeight(position) - 10, this->position.z));
	}


}

void CPlayerInfo::PickUpGun(CWeaponInfo* &gun)
{
	if (gun == nullptr)
		return;
	// if both gun slots are occupied, no space to pick up gun
	if (primaryWeapon && secondaryWeapon)
		return;

	// only equip the gun at the null weapon pointer
	if (primaryWeapon == nullptr)
	{
		// equip gun
		primaryWeapon = gun;
		// remove the gun node from scene
		CSceneNode* n = CSceneGraph::GetInstance()->DetachNode(CSceneGraph::GetInstance()->GetNode(gun));

		// erase the gun from the vector
		if (!GunOnGround.empty())
			GunOnGround.erase(std::find(GunOnGround.begin(), GunOnGround.end(), gun));
	}
	else if (secondaryWeapon == nullptr)
	{
		// read above
		secondaryWeapon = gun;
		// search for the gun node, then detach it from scene
		CSceneNode *n = CSceneGraph::GetInstance()->DetachNode(CSceneGraph::GetInstance()->GetNode(gun));

		if (!GunOnGround.empty())
			GunOnGround.erase(std::find(GunOnGround.begin(), GunOnGround.end(), gun));

	}

	// remove the reference object (?)
	if (gun1)
	{
		if (DistanceSquaredBetween(gun1->GetPosition(), this->position) < 120)
		{
			gun1->SetIsDone(true);
			gun1 = nullptr;
		}
	}
	if (gun2)
	{
		if (DistanceSquaredBetween(gun2->GetPosition(), this->position) < 120)
		{
			gun2->SetIsDone(true);
			gun2 = nullptr;
		}
	}
}

void CPlayerInfo::AddScore(int _score)
{
	int tempScore = score;
	// theres no negative score
	if (tempScore + _score <= 0)
	{
		score = 0;
		return;
	}
	score += _score;
}

unsigned char CPlayerInfo::CheckSpecialKey(const char* control)
{
	if (control == nullptr)
		return '_';

	std::string control_str(control);

	if (control_str == "space")
		return VK_SPACE;
	else if (control_str == "LMB")
		return MouseController::LMB;
	else if (control_str == "RMB")
		return MouseController::RMB;
	else if (control_str == "LSHIFT")
		return VK_LSHIFT;
	else if (control_str == "RSHIFT")
		return VK_RSHIFT;
	else if (control_str == "tab")
		return VK_TAB;
	else if (control_str == "enter")
		return VK_RETURN;
	else if (control_str == "backspace")
		return VK_BACK;
	else if (control_str == "lcontrol")
		return VK_LCONTROL;
	else if (control_str == "rcontrol")
		return VK_RCONTROL;
	else
		return control_str[0];
}
