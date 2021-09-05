#include <omp.h>
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

#define INPUT_FILENAME "../input/input2.txt"
#define OUTPUT_FILENAME "../output/output2_basic_parallel.txt"

int main(){
    omp_set_num_threads(1);

    std::ifstream infile; 
    infile.open(INPUT_FILENAME);

    std::ofstream outfile;
    outfile.open(OUTPUT_FILENAME);

    int n_testcases;
    // n_testcase = 
    std::string copystring;
    infile >> copystring;
    n_testcases = std::stoi(copystring);
    // std::cout.precision(10);
    int X,Y,U,V,N;
    bool flag;
    for (int no_t = 0; no_t < n_testcases; no_t++)
    {
        //Reading parameters
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
        flag = true;

        // double data[X + U - 1][Y + V - 1] = {0};
        // double temp_image[X + U - 1][Y + V - 1] = {0};
        // double filter[U][V] = {0};

        double **data = new double *[X+U-1];
        for (int i = 0; i < X+U-1; i++)
            data[i] = new double[Y+V-1]{0};
        double **temp_image = new double *[X + U - 1];
        for (int i = 0; i < X + U - 1; i++)
            temp_image[i] = new double[Y + V - 1]{0};
        double **filter = new double *[U];
        for (int i = 0; i < U; i++)
            filter[i] = new double[V];

        // std::cout << " X: " << X << " Y: " << Y << " U: " << U << " V: "<< V
        //         << " N: " << N << std::endl;

        //Reading data
        for(int i=0;i<X;i++)
        {
            for(int j=0;j<Y;j++)
            {
                infile >> copystring;
                data[i+(U/2)][j+(V/2)] = std::stod(copystring);
            }
        }
        for(int i=0;i<U;i++)
        {
            for(int j=0;j<V;j++)
            {
                infile >> copystring;
                filter[i][j] = std::stod(copystring);
            }
        }
        // std::cout << "Filter: \n";
        // for (int i = 0; i < U; i++)
        // {
        //     for (int j = 0; j < V; j++)
        //         std::cout << filter[i][j] << " ";
        //     std::cout << "\n";
        // }
        // std::cout << "Data: \n";
        // for (int i = 0; i < X+U-1; i++)
        // {
        //     for (int j = 0; j < Y+V-1; j++)
        //         std::cout << data[i][j] << " ";
        //     std::cout << "\n";
        // }
        //Convolution
        for (int iter = 0; iter < N; iter++)
        {
            if(flag == true)
                {
                    #pragma omp parallel for default(shared) collapse(2) num_threads(X)
                    for (int i = 0; i < X; i++)
                        for (int j = 0; j < Y; j++)
                        {
                            double temp_data = 0;
                            #pragma omp simd collapse(2) reduction(+ : temp_data)
                            for (int u = 0; u < U; u++)
                                for (int v = 0; v < V;v++)
                                        temp_data += (double)data[i + u][j + v] * (double)filter[u][v];
                            temp_image[i+U/2][j+V/2]= temp_data;
                        }
                }
            else
                {
                    #pragma omp parallel for default(shared) collapse(2) num_threads(X)
                    for (int i = 0; i < X; i++)
                        for (int j = 0; j < Y; j++)
                        {
                            double temp_data = 0;
                            #pragma omp simd collapse(2) reduction(+ : temp_data)
                            for (int u = 0; u < U; u++)
                                for (int v = 0; v < V; v++)
                                    temp_data += (double)temp_image[i + u][j + v] * (double)filter[u][v];
                            data[i + U / 2][j + V / 2] = temp_data;
                        }
                }
            flag = !flag;
            }

        outfile << std::setprecision(10);
        if(flag == true)
            for (int i = 0; i < X; i++)
            {
                for (int j = 0; j < Y; j++)
                    outfile << std::scientific << data[i + U / 2][j + V / 2] << " ";
                outfile << "\n";
            }
        else
            for (int i = 0; i < X; i++)
            {
                for (int j = 0; j < Y; j++)
                    outfile << std::scientific << temp_image[i + U / 2][j + V / 2] << " ";
                outfile << "\n";
            }
    
    }

    infile.close();
    outfile.close();

    return 1;
}