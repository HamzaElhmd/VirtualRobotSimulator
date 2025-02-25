#include "../include/GBIA/Agent.h"
#include "../include/VRS/Grid.h"
#include <iostream>

int main () {

	std::cout << "Virtual Robot Simulator" << std::endl;

	try {
		std::tuple<int, int> dimensions = std::make_tuple(20, 20);
		Grid grid = Grid(dimensions);
		std::vector<std::tuple<IState*, Action>> successors;
		Astar astar = Astar(); 
		Agent intelAgent(&astar, &grid);
		
		grid.initializeState(0.2);
		grid.display();

		successors = grid.successor();
		for (auto& [state, action] : successors) {
			Grid *newGrid = dynamic_cast<Grid*>(state);

			std::cout << "Action :" << action.getIdentifier() << std::endl;
			newGrid->display();
		}
	} catch (std::exception& e) {
		std::cerr << "An error occured : " << e.what() << std::endl; 
	}
	
	return 0;
}
