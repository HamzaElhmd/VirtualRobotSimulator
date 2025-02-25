#ifndef ALGORITHM_H
#define ALGORITHM_H

#include "State.h"
#include <queue>
#include <functional>

class IAlgorithm {
	public:
		virtual ~IAlgorithm() = default;
		virtual std::vector<Action> execute(IState* initialState) = 0; 

};

class Astar : public IAlgorithm {
	public:
		int depth;
		std::priority_queue<IState*, std::vector<IState*>, std::function<bool(const IState*, const IState*)>> openList; // Current fringe generated

		std::vector<IState*> closedList; // Visited states

		explicit Astar() noexcept : depth(0),
			 openList([this](const IState* s1, 
						 const IState* s2) {
				return this->compare(s1, s2);
				}) {}

		std::priority_queue<IState*, std::vector<IState*>, 
			std::function<bool(const IState*, const IState*)>> getOpenList() const noexcept { return openList; }
		std::vector<IState*> getClosedList() const noexcept { return closedList; }
		int calculateHeuristic(const IState* s) { return depth + s->heuristic(); }

		bool compare (const IState* a, const IState* b);
		bool inClosedList(const IState *state) const;
		std::vector<Action> execute(IState *initialState) override;
};

#endif
