#ifndef STATES_ZOMBIE_H
#define STATES_ZOMBIE_H

#include "State.h"
#include "Zombie.h"

class StateMove : public State
{
	Zombie *theZombie;
public:
	StateMove(const std::string &stateID, Zombie *theZombie_);
	virtual ~StateMove();

	virtual void Enter();
	virtual void Update(double dt);
	virtual void Exit();
};

class StateChase : public State
{
	Zombie *theZombie;
public:
	StateChase(const std::string &stateID, Zombie *theZombie_);
	virtual ~StateChase();

	virtual void Enter();
	virtual void Update(double dt);
	virtual void Exit();
};
#endif