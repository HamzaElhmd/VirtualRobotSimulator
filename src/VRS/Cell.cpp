#include "../../include/VRS/Cell.h"
#include <iostream>

Cell::Cell(const std::tuple<int, int>& newCoords) {
	shape = "°";
	coord = newCoords;
	type = NONE;
}

Obstacle::Obstacle(const std::tuple<int, int>& newCoords) : Cell(newCoords) { 
	shape = "■";
	type = OBSTACLE;
}


FreeSpace::FreeSpace(const std::tuple<int, int>& newCoords) : Cell(newCoords) { 
	shape = "□";
	type = FREE_SPACE;
}

Goal::Goal(const std::tuple<int, int>& newCoords) : Cell(newCoords) { 
	shape = "⦿"; 
	type = GOAL;
}

Robot::Robot(const std::tuple<int, int>& newCoords) : Cell(newCoords) { 
	shape = "⚉"; 
	type = ROBOT;
}

bool Robot::move(const Direction& d) {
	try {
		int x = std::get<0>(coord);
		int y = std::get<1>(coord);

		switch(d) {
			case LEFT:
				coord = std::make_tuple(x, y-1);
				break;
			case UP:
				coord = std::make_tuple(x+1, y);
				break;
			case DOWN:
				coord = std::make_tuple(x-1, y);
				break;
			case RIGHT:
				coord = std::make_tuple(x, y+1);
				break;
			default:
				throw IllegalMove("NOT AVAILABLE");
		}

		notify();
		return true;
	} catch(IllegalMove e) {
		std::cerr << "Error : " << e.what() << std::endl;
		return false;
	}
}

void Robot::attach(Observer* obs) {
	observers.push_back(obs);
}

void Robot::detach(int& id_) {
	observers.erase(observers.begin() + id_);
}
