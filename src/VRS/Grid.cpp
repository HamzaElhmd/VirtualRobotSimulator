#include "../../include/VRS/Grid.h"
#include <iostream>
#include <time.h>
#include <stdlib.h>

#define BINOMIAL_MEAN(n, p) ((n) * (p))

Grid::Grid(std::tuple<int, int>& Dims) {
    dims = Dims;

    robotCoord = std::make_tuple(-1, -1);
    goalCoord = std::make_tuple(-1, -1);

    cells.resize(std::get<0>(dims), std::vector<Cell*>(std::get<1>(dims), nullptr));
}

std::vector<std::vector<Cell*>>  Grid::getCells() const { return cells; }

std::tuple<int, int> Grid::getDimension() const { return dims; }

std::tuple<int, int> Grid::getRobot() const { return robotCoord; }

std::tuple<int, int> Grid::getGoal() const { return goalCoord; }

Cell* Grid::getRobotState() const {
	Cell *ptr;
	//search for the robot in the grid
	for (std::vector<Cell*> row : cells) {
		for (Cell* c : row) {
			if (c->getType() == ROBOT) {
				return c;
			}
		}
	}
	return nullptr;
}

Cell* Grid::getCell(const std::tuple<int, int>& coords) {
	for (std::vector<Cell*> row : cells) {
		for (Cell* c : row) {
			if (c->getCoordinates() == coords) {
				return c;
			}
		}
	}
	return new Cell(std::make_tuple(-1, -1));
}

void Grid::setCells(std::vector<std::vector<Cell*>>& newCells) {
	cells = newCells;
}

void Grid::setDimension(std::tuple<int, int>& newDims) {
	dims = newDims;
}

void Grid::setRobot(const std::tuple<int, int>& newRobot) {
	cells[std::get<0>(newRobot)][std::get<1>(newRobot)] = new Robot(newRobot);
	
	Observer *obs = this;  
	((Robot*)cells[std::get<0>(newRobot)][std::get<1>(newRobot)])->attach(obs); 
	if (robotCoord != std::make_tuple(-1, -1))
		cells[std::get<0>(robotCoord)][std::get<1>(robotCoord)] = new FreeSpace(robotCoord);
	
	robotCoord = newRobot;

}

void Grid::setGoal(const std::tuple<int, int>& newGoal) {
	cells[std::get<0>(newGoal)][std::get<1>(newGoal)] = new Goal(newGoal);
	
	if (goalCoord != std::make_tuple(-1, -1)) {
		cells[std::get<0>(goalCoord)][std::get<1>(goalCoord)] = new FreeSpace(goalCoord);	
	}

	goalCoord = newGoal;
}

void Grid::display() const {
	for (std::vector<Cell*> row : cells) {
		for (Cell *c : row) {
			std::cout << "|" << c->getShape() << "|";
		}
		std::cout<< std::endl;
	}
}

void Grid::update() {
	Cell* state = getRobotState();
    	if (state == nullptr) {
        	std::cerr << "ERROR: No robot found." << std::endl;
        	return;
    	}

    	std::tuple<int, int> newState = state->getCoordinates(); 

    	int xNew = std::get<0>(newState);
    	int yNew = std::get<1>(newState);
    	int xGrid = std::get<0>(getDimension());
    	int yGrid = std::get<1>(getDimension());

    	if (xNew >= xGrid || xNew < 0 || yNew >= yGrid || yNew < 0) {
        	state->setCoordinates(getRobot()); 
        	throw IllegalMove("OUT OF BOUND");
    	}

	Cell* transState = getCell(std::make_tuple(xNew, yNew));
    	if (transState->getType() != FREE_SPACE && transState->getType() != GOAL) {
        	state->setCoordinates(getRobot());  
        	throw IllegalMove("NOT FREE SPACE.");
    	} else {
        	setRobot(std::make_tuple(xNew, yNew)); 
    	}
}


void Grid::fillFreeSpace(int xDim, int yDim) {
	for (int i = 0; i < xDim; i++) {
		for (int j = 0; j < yDim; j++) {
			cells[i][j] = new FreeSpace(std::make_tuple(i, j));
		}
	}
}

void Grid::fillObstacles(int xDim, int yDim, int nObstacles) {
	for (int i = 0; i < nObstacles; ) {
		int x = rand() % xDim;
		int y = rand() % yDim;

		if (cells[x][y]->getType() == FREE_SPACE) {
			cells[x][y] = new Obstacle(std::make_tuple(x, y));
			i++;
		}
	}
}

void Grid::fillRobot(int xDim, int yDim) {
    	int x = rand() % xDim;
    	int y = rand() % yDim;
    	CellType t = cells[x][y]->getType();

    	while (t != FREE_SPACE && t != GOAL) {
        	x = rand() % xDim;
        	y = rand() % yDim;
        	t = cells[x][y]->getType();
    	}

    	setRobot(std::make_tuple(x, y));
}

void Grid::fillGoal(int xDim, int yDim) {
    	int x = rand() % xDim;
    	int y = rand() % yDim;
    	CellType t = cells[x][y]->getType();

    	while (t != FREE_SPACE && t != ROBOT) {
        	x = rand() % xDim;
        	y = rand() % yDim;
        	t = cells[x][y]->getType();
    	}

    	setGoal(std::make_tuple(x, y));
}

void Grid::initializeState(const double p) {
	int xDim, yDim, n, nObstacles;

	xDim = std::get<0>(dims);
	yDim = std::get<1>(dims);
	srand(time(NULL));

	n = xDim * yDim;
	nObstacles = BINOMIAL_MEAN(n, p);

	fillFreeSpace(xDim, yDim);
	fillObstacles(xDim, yDim, nObstacles);
	fillRobot(xDim, yDim);
	fillGoal(xDim, yDim);
}

bool Grid::goalState() const {

	if (goalCoord == robotCoord) return true;
	else return false;

}

std::vector<std::tuple<IState*, Action>> Grid::successor() const {
	std::vector<std::tuple<IState*, Action>> successors;

	for (Direction dir : {LEFT, UP, DOWN, RIGHT}) {
		Grid *newGrid = new Grid(*this);
		Cell *robotCell = newGrid->getRobotState();
		Robot *robot = dynamic_cast<Robot*>(robotCell);

		robot->attach(newGrid);
		std::cout << robot->getObservers().size() << std::endl;
		if (robot->move(dir)) {
			successors.push_back(std::make_tuple(newGrid, Action(dir)));
		} 
	}

	return successors;
}

int Grid::heuristic() const {
	int xRobot, yRobot, xGoal, yGoal;

	xRobot = std::get<0>(robotCoord);
	yRobot = std::get<1>(robotCoord);
	xGoal = std::get<0>(goalCoord);
	yGoal = std::get<1>(goalCoord);

	return abs(xGoal - xRobot) + abs(yGoal - yRobot);
}

bool Grid::compare(const void* state) const {
	Grid *newGrid = (Grid*) state;

	if (newGrid->dims == dims) {
		for (int i = 0; i < std::get<0>(dims); i++) {
			for (int j = 0; j < std::get<1>(dims); j++) {
				if (cells[i][j]->getType() != newGrid->cells[i][j]->getType())
					return false;
			}
		}
		return true;
	} else 
		return false;
}
