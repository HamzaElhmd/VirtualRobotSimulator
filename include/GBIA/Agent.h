#ifndef AGENT_H
#define AGENT_H

#include "State.h"
#include "Algorithm.h"

class Agent {
	private:
		IAlgorithm *algorithm;
		IState *initialState;

	public:
		Agent(IAlgorithm *alg, IState *initState) noexcept;
		std::vector<Action> start();
};


#endif
