cmake_minimum_required(VERSION 3.0.0)
project(parallel_programming VERSION 0.1.0)

find_package(OpenMP)
find_package(Eigen3 REQUIRED)

include(CTest)
enable_testing()

include_directories(include)
include_directories(s
	${EIGEN3_INCLUDE_DIRS}
    )

add_executable(run src/main.cpp)
target_link_libraries(run PUBLIC OpenMP::OpenMP_CXX)


set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
