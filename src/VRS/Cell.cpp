#include "../../include/VRS/Cell.h"
#include <iostream>

std::string cellTypeStr(const CellType& t) {
	switch (t) {
		case OBSTACLE:
			return "OBSTACLE";
			break;
		case FREE_SPACE:
			return "FREE SPACE";
			break;
		case ROBOT:
			return "ROBOT";
			break;
		case GOAL:
			return "GOAL";
			break;
		case NONE:
			return "NONE";
			break;
	}
	return "";
}

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

std::string directionStr(const Direction& dir) {
	switch (dir) {
		case LEFT:
			return "LEFT";
			break;
		case UP:
			return "UP";
			break;
		case DOWN:
			return "DOWN";
			break;
		case RIGHT:
			return "RIGHT";
			break;
	}
	return "";
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
				coord = std::make_tuple(x-1, y);
				break;
			case DOWN:
				coord = std::make_tuple(x+1, y);
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
	//	std::cerr << "Error : " << e.what() << std::endl;
		return false;
	}
}

void Robot::attach(Observer* obs) {
	observers.push_back(obs);
}

void Robot::detach() {
	observers.clear();
}
