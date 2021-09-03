#include <iostream>
#include <omp.h>
#include <fstream>
#include <string>
#include <eigen3/Eigen/Dense>



#define INPUT_FILENAME "../src/assignment1/input/input.txt"
#define OUTPUT_FILENAME "../src/assignment1/output/output.txt"

#define $P(X) std::cout<<X<<std::endl;

int main(){

    std::ifstream infile; 
    infile.open(INPUT_FILENAME);

    int n_testcases;
    int i = 0;
    // n_testcase = 
    std::string copystring;
    infile >> copystring;
    n_testcases = std::stoi(copystring);
    std::cout.precision(10);

    for(int no_t=0;no_t<n_testcases;no_t++)
    {
        int X,Y,U,V,N;
        infile >> copystring;
        X = std::stoi(copystring);
        infile >> copystring;
        Y = std::stoi(copystring);
        infile >> copystring;
        U = std::stoi(copystring);
        infile >> copystring;
        V = std::stoi(copystring);
        infile >> copystring;
        N = std::stoi(copystring);

        Eigen::MatrixXd data(X+U/2,Y+V/2);
        Eigen::MatrixXd output_data(X+U-1,Y+V-1);
        Eigen::MatrixXd filter(U,V);
        data = Eigen::MatrixXd::Zero(X+U/2,Y+V/2);

        for(int i=0;i<X;i++)
        {
            for(int j=0;j<Y;j++)
            {
                infile >> copystring;
                data(i+U/2,j+V/2) = std::stod(copystring);
            }
        }
        for(int i=0;i<U;i++)
        {
            for(int j=0;j<V;j++)
            {
                infile >> copystring;
                filter(i,j) = std::stod(copystring);
            }
        }
        std::cout << std::scientific << "Here is the matrix m:\n" << filter(0,2) <<std::endl;
    }
    
    return 1;
}