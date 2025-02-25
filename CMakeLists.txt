cmake_minimum_required(VERSION 3.30)

project(VirtualRobotSimulator LANGUAGES CXX)

# Set the compilers explicitly
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

# Collect sources
set(SOURCES
    src/main.cpp
    src/Observer.cpp
    src/GBIA/Algorithm.cpp
    src/GBIA/Agent.cpp
    src/VRS/Cell.cpp
    src/VRS/Grid.cpp
)

add_executable(${PROJECT_NAME} ${SOURCES})

target_include_directories(${PROJECT_NAME} PRIVATE include)

target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wpedantic -g)


