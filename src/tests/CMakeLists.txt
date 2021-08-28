
add_executable(openmp_basic src/test1.cpp)
target_link_libraries(openmp_basic PUBLIC OpenMP::OpenMP_CXX)