#ifndef GRID_H
#define GRID_H

#include "Cell.h"
#include "../GBIA/State.h"

class Grid : public IState, public Observer {
	private:
		std::vector<std::vector<Cell*>> cells;
		std::tuple<int, int> dims;
		std::tuple<int, int> robotCoord;
		std::tuple<int, int> goalCoord;
		
		void fillFreeSpace(int xDim, int yDim);
		void fillObstacles(int xDim, int yDim, int nObstacles);
		void fillRobot(int xDim, int yDim);
		void fillGoal(int xDim, int yDim);

	public:
		Grid(const std::tuple<int, int>& Dims);
		~Grid() override = default;

		std::vector<std::vector<Cell*>> getCells() const;
		std::tuple<int, int> getDimension() const;
		std::tuple<int, int> getRobot() const;
		std::tuple<int, int> getGoal() const;
		Cell* getRobotState() const;
		Cell* getCell(const std::tuple<int, int>& coords);

		void setCells(std::vector<std::vector<Cell*>>& newCells);
		void setDimension(const std::tuple<int, int>& newDims);
		void setRobot(const std::tuple<int, int>& newRobot);
		void setGoal(const std::tuple<int, int>& newGoal);

		void display() const;
		void displayAnimated() const;
		void copyTo(Grid *newGrid) const;

		void update() override;
		void initializeState(const double p) override;
		bool goalState() const override;
		std::vector<IState*> successor() const override;
		int heuristic() const override;
		bool compare(const void* state) const override;
		void show() const override { display(); }
};

#endif
