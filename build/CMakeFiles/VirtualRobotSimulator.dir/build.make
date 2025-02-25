# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xen/xendev/Robotics/VirtualRobotSimulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xen/xendev/Robotics/VirtualRobotSimulator/build

# Include any dependencies generated for this target.
include CMakeFiles/VirtualRobotSimulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VirtualRobotSimulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VirtualRobotSimulator.dir/flags.make

CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/flags.make
CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o: /home/xen/xendev/Robotics/VirtualRobotSimulator/src/main.cpp
CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o -MF CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o.d -o CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o -c /home/xen/xendev/Robotics/VirtualRobotSimulator/src/main.cpp

CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xen/xendev/Robotics/VirtualRobotSimulator/src/main.cpp > CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.i

CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xen/xendev/Robotics/VirtualRobotSimulator/src/main.cpp -o CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.s

CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/flags.make
CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o: /home/xen/xendev/Robotics/VirtualRobotSimulator/src/Observer.cpp
CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o -MF CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o.d -o CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o -c /home/xen/xendev/Robotics/VirtualRobotSimulator/src/Observer.cpp

CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xen/xendev/Robotics/VirtualRobotSimulator/src/Observer.cpp > CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.i

CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xen/xendev/Robotics/VirtualRobotSimulator/src/Observer.cpp -o CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.s

CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/flags.make
CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o: /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Algorithm.cpp
CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o -MF CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o.d -o CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o -c /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Algorithm.cpp

CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Algorithm.cpp > CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.i

CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Algorithm.cpp -o CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.s

CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/flags.make
CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o: /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Agent.cpp
CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o -MF CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o.d -o CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o -c /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Agent.cpp

CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Agent.cpp > CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.i

CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xen/xendev/Robotics/VirtualRobotSimulator/src/GBIA/Agent.cpp -o CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.s

CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/flags.make
CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o: /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Cell.cpp
CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o -MF CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o.d -o CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o -c /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Cell.cpp

CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Cell.cpp > CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.i

CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Cell.cpp -o CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.s

CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/flags.make
CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o: /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Grid.cpp
CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o: CMakeFiles/VirtualRobotSimulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o -MF CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o.d -o CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o -c /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Grid.cpp

CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.i"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Grid.cpp > CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.i

CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.s"
	clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xen/xendev/Robotics/VirtualRobotSimulator/src/VRS/Grid.cpp -o CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.s

# Object files for target VirtualRobotSimulator
VirtualRobotSimulator_OBJECTS = \
"CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o" \
"CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o" \
"CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o" \
"CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o" \
"CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o" \
"CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o"

# External object files for target VirtualRobotSimulator
VirtualRobotSimulator_EXTERNAL_OBJECTS =

VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/src/main.cpp.o
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/src/Observer.cpp.o
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Algorithm.cpp.o
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/src/GBIA/Agent.cpp.o
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Cell.cpp.o
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/src/VRS/Grid.cpp.o
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/build.make
VirtualRobotSimulator: CMakeFiles/VirtualRobotSimulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable VirtualRobotSimulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VirtualRobotSimulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VirtualRobotSimulator.dir/build: VirtualRobotSimulator
.PHONY : CMakeFiles/VirtualRobotSimulator.dir/build

CMakeFiles/VirtualRobotSimulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VirtualRobotSimulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VirtualRobotSimulator.dir/clean

CMakeFiles/VirtualRobotSimulator.dir/depend:
	cd /home/xen/xendev/Robotics/VirtualRobotSimulator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xen/xendev/Robotics/VirtualRobotSimulator /home/xen/xendev/Robotics/VirtualRobotSimulator /home/xen/xendev/Robotics/VirtualRobotSimulator/build /home/xen/xendev/Robotics/VirtualRobotSimulator/build /home/xen/xendev/Robotics/VirtualRobotSimulator/build/CMakeFiles/VirtualRobotSimulator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/VirtualRobotSimulator.dir/depend

