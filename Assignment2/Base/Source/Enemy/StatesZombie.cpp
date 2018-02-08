#include "StatesZombie.h"
#include"../PlayerInfo/PlayerInfo.h"

StateMove::StateMove(const std::string & stateID, Zombie * theZombie_)
	: State(stateID)
	, theZombie(theZombie_)
{
}

StateMove::~StateMove()
{
}

void StateMove::Enter()
{
}

void StateMove::Update(double dt)
{
	if ((theZombie->GetTarget() - theZombie->GetPos()).LengthSquared() < 25.0f)
	{
		CWaypoint* nextWaypoint = theZombie->GetNextWaypoint();
		if (nextWaypoint)
			theZombie->SetTarget(nextWaypoint->GetPosition());
		else
			theZombie->SetTarget(Vector3(0, 0, 0));
		cout << "Next target: " << theZombie->GetTarget() << endl;
	}
	if (DistanceSquaredBetween(CPlayerInfo::GetInstance()->GetPos(), theZombie->GetPos()) < 2500)
		theZombie->sm->SetNextState("Chase");
}

void StateMove::Exit()
{
}

StateChase::StateChase(const std::string & stateID, Zombie * theZombie_)
	: State(stateID)
	, theZombie(theZombie_)
{
}

StateChase::~StateChase()
{
}

void StateChase::Enter()
{
}

void StateChase::Update(double dt)
{
	// constantly update the target since player position will change as well
	theZombie->SetTarget(CPlayerInfo::GetInstance()->GetPos());

	// gameplay : when zombie 'collides' with player
	if (DistanceSquaredBetween(CPlayerInfo::GetInstance()->GetPos(), theZombie->GetPos()) < 25)
	{
		CPlayerInfo::GetInstance()->SetPlayerLose(true);
		return;
	}

	if (DistanceSquaredBetween(CPlayerInfo::GetInstance()->GetPos(), theZombie->GetPos()) > 2500)
		theZombie->sm->SetNextState("Move");
}

void StateChase::Exit()
{
}
