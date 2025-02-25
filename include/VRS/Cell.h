#ifndef CELL_H
#define CELL_H

#include "../Observer.h"
#include <string>
#include <tuple>
#include <exception>

class IllegalMove : public std::exception {
	private:
		std::string message;
	public:
		IllegalMove(const std::string& msg) : message(msg) {}
		const char* what() const noexcept override {
			return message.c_str();
		}
};


typedef enum {OBSTACLE, FREE_SPACE, ROBOT, GOAL, NONE} CellType;

class Cell {
	protected:
		std::string shape;
		CellType type;
		std::tuple<int, int> coord;

	public:
		Cell(const std::tuple<int, int>& newCoords);
		Cell() : shape("°"), type(NONE) {}
		virtual ~Cell() {}

		std::string getShape() const noexcept { return shape; }
		std::tuple<int, int> getCoordinates() const noexcept { return coord; }
		CellType getType() const noexcept { return type; }  

		void setShape(const std::string& newShape) { shape = newShape; }
		void setCoordinates(const std::tuple<int, int>& newCoords) { coord = newCoords; }
};

class Obstacle : public Cell {
	public:
		Obstacle(const std::tuple<int, int>& newCoords);
		~Obstacle() = default;

};

class FreeSpace : public Cell {
	public:
		FreeSpace(const std::tuple<int, int>& newCoords);
		~FreeSpace() = default;
};

class Goal : public Cell {
	public:
		Goal(const std::tuple<int, int>& newCoords);
		~Goal() = default;

};

typedef enum {LEFT, UP, DOWN, RIGHT} Direction;

class Robot : public Cell, public Subject {
	public:
		Robot(const std::tuple<int, int>& newCoords);
		~Robot() = default;

		bool move(const Direction& d);

		void attach(Observer* obs) override;
		void detach(int& id_) override;
};

#endif
