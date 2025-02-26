#include "../../include/GBIA/Algorithm.h"
#include <algorithm>

bool Astar::compare (const IState* a, const IState* b) {
	return this->calculateHeuristic(a) > this->calculateHeuristic(b);
}

bool Astar::inClosedList(const IState* state) const {

	for (const IState* s : closedList) {
		if (s->compare((void*)&state)) 
			return true;
	}

	return false;
}

std::vector<Action> Astar::execute(IState* initialState) {

	std::vector<Action> path;
	std::vector<IState*> tempSuccessors;
	const IState* tempState = initialState;

	openList.push(initialState);

	while (!openList.empty()) {
		tempState = openList.top();
		openList.pop();

		if (tempState->goalState()) {
			while (!tempState->compare(initialState)) {
				path.push_back(std::get<1>(tempState->getParent()));
				tempState = std::get<0>(tempState->getParent());
			}
			std::reverse(path.begin(), path.end());
			return path;
		}

		closedList.push_back(tempState);
		
		tempSuccessors = tempState->successor();
		
		for (auto& state : tempSuccessors) {
			if(inClosedList(state))
				continue;

			openList.push(state);
		}
	}

	return {};	
}
