#include "../../include/GBIA/Agent.h"

Agent::Agent(IAlgorithm *alg, IState *initState) noexcept : algorithm(alg), initialState(initState) {}

std::vector<Action> Agent::start() {

	return algorithm->execute(initialState);

}
