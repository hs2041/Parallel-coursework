#include <iostream>
#include <omp.h>

void happa()
{
    std::cout << "test\n";
}

int main(int, char**) {
    double A[100];
    omp_set_num_threads(4);
    #pragma omp parallel
    {
        std::cout <<"psuedo source "<< omp_get_thread_num()<<"\n";
        happa();
    }
}
