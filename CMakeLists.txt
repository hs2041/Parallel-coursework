cmake_minimum_required(VERSION 3.0.0)
project(parallel_programming VERSION 0.1.0)

find_package(OpenMP)

include(CTest)
enable_testing()

include_directories(include)

add_executable(openmp_basic src/main.cpp)
target_link_libraries(openmp_basic PUBLIC OpenMP::OpenMP_CXX)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
