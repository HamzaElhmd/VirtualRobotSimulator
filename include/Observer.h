#ifndef OBSERVER_H
#define OBSERVER_H

#include <vector>

class Observer {
	public:
		virtual ~Observer() = default;
		virtual void update() = 0;
};


class Subject {
	protected:
		std::vector<Observer*> observers;

	public:
		virtual ~Subject() = default;
		virtual void attach(Observer* obs) = 0;
		virtual void detach() = 0;
		std::vector<Observer*> getObservers() const {return observers;}
		void notify();
};

#endif
