#include "../../include/GBIA/Algorithm.h"

bool Astar::compare (const IState* a, const IState* b) {
	return this->calculateHeuristic(a) > this->calculateHeuristic(b);
}

bool Astar::inClosedList(const IState* state) const {

	for (IState* s : closedList) {
		if (s->compare((void*)&state)) 
			return true;
	}

	return false;
}

std::vector<Action> Astar::execute(IState* initialState) {

	std::vector<Action> path;
	std::vector<std::tuple<IState*, Action>> tempSuccessors;
	IState* tempState = initialState;

	openList.push(initialState);

	while (!openList.empty()) {
		tempState = openList.top();
		openList.pop();

		if (tempState->goalState())
			return path;

		closedList.push_back(tempState);
		tempSuccessors = tempState->successor();
		
		for (auto& [state, action] : tempSuccessors) {
			if(inClosedList(state))
				continue;

			openList.push(state);
			path.push_back(action);
		}

	}

	return path;	
}
