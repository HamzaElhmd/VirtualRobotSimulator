#ifndef STATE_H
#define STATE_H

#include <vector>
#include <tuple>
#include <string>
#include <memory>

template <typename T> 
class State {
	private:
		T rep;

	protected:
		State(T newRep) noexcept : rep(newRep) {}
	public:
		T getRepresentation() const noexcept { return rep; }
};

class Action {
	private:
		int identifier;
	public:
		Action(const int& id) : identifier(id) {}
		~Action() = default;

		int getIdentifier() const noexcept { return identifier; }

};

class IState {
	public:
		virtual ~IState() = default;
		virtual void initializeState(const double p) = 0;
		virtual bool goalState() const = 0;

		virtual std::vector<std::tuple<IState*, Action>> successor() const = 0;

		virtual int heuristic() const = 0;
		virtual bool compare(const void *state) const = 0;
};

#endif
