#include "../include/GBIA/Agent.h"
#include "../include/VRS/Grid.h"
#include <iostream>
#include <unistd.h>

int main () {

	std::cout << "=================== Virtual Robot Simulator ===================" << std::endl;

	try {
		std::tuple<int, int> dimensions = std::make_tuple(20, 20);
		Grid grid = Grid(dimensions);
		std::vector<Action> path;
		Astar astar = Astar(); 
		Agent intelAgent(&astar, &grid);

		grid.initializeState(0.2);
		std::cout << "\tInitial State" << std::endl; 
		grid.display();

		path = intelAgent.start();
		
		std::cout << "Start ? (Press Any Key) ";
		std::cin.get();

		for (Action a: path) {
			Robot *robot = dynamic_cast<Robot*>(grid.getRobotState());
			if (!robot)
				throw std::runtime_error("No robot found !");
			robot->attach(&grid);
		
			Direction d = static_cast<Direction>(a.getIdentifier());
			robot->move(d);
			grid.displayAnimated();
			sleep(1);
			
		}
	} catch (std::exception& e) {
		std::cerr << "An error occured : " << e.what() << std::endl; 
	}
	
	return 0;
}
