#include <iostream>
#include <omp.h>

void happa()
{
    std::cout << "test\n";
}

int main(int, char **)
{
    double A[100];
    omp_set_num_threads(4);
#pragma omp parallel
    {
        std::cout << "psuedo source " << omp_get_thread_num() << "\n";
        happa();
    }   
    int n=5;
    std::cout<<"Enter no. of threads\n";
    // std::cin>>n;

// //second format
// #pragma omp parallel num_threads(n)
//     {
//         std::cout << "psuedo source " << omp_get_thread_num() << "\n";
//         happa();
//     }

int i,j,k;
    i=0;
    j=0;
    k=23;
    float l;
// #pragma omp parallel num_threads(n) shared(i) private(k,l)
//     {
//         //i,j are shared 
//         //k,l are private
//         i++;k++;
//         int m,n;
//         std::cout<<"Value of k is "<<k<<std::endl;
//     }

    // std::cout<<"Value of k is "<<k<<std::endl;
    // std::cout<<"Value of i is "<<i<<std::endl;

// #pragma omp parallel num_threads(n) shared(i) firstprivate(k,l)
//     {
//         //i,j are shared 
//         //k,l are private
//         i++;k++;
//         int m,n;
//         std::cout<<"Value of k is "<<k<<std::endl;
//     }

//     std::cout<<"Value of k is "<<k<<std::endl;
//     std::cout<<"Value of i is "<<i<<std::endl;

//value of k is inisitialised to 23 in each thread, l remains uninitialised
#pragma omp parallel num_threads(n) shared(i) firstprivate(k,l)
    {
        //i,j are shared 
        //k,l are private
        i++;k++;
        int m,n;
        std::cout<<"Value of k is "<<k<<std::endl;
    }

    std::cout<<"Value of k is "<<k<<std::endl;
    std::cout<<"Value of i is "<<i<<std::endl;


}
