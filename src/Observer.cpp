#include "../include/Observer.h"

void Subject::notify() {

	for (Observer* o : observers) {
		o->update();
	}
}
