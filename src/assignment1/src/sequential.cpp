#include <omp.h>
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
#include <chrono>

#define INPUT_FILENAME "../input/input.txt"
#define OUTPUT_FILENAME "../output/output_test_matrix.txt"

int main(){
    auto start = std::chrono::high_resolution_clock::now();

    std::ifstream infile; 
    infile.open(INPUT_FILENAME);

    std::ofstream outfile;
    outfile.open(OUTPUT_FILENAME);

    int n_testcases;
    int i = 0;
    // n_testcase = 
    std::string copystring;
    infile >> copystring;
    n_testcases = std::stoi(copystring);
    // std::cout.precision(10);

    int X,Y,U,V,N;
    bool flag;
    for (int no_t = 0; no_t < n_testcases; no_t++)
    {
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
        double data[X + U - 1][Y + V - 1] = {0};
        double temp_image[X + U - 1][Y + V - 1] = {0};
        double filter[U][V];

        for(int i=0;i<X;i++)
        {
            for(int j=0;j<Y;j++)
            {
                infile >> copystring;
                data[i+U/2][j+V/2] = std::stod(copystring);
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

        for (int iter = 0; iter < N; iter++)
        {
            if(flag == true)
                for (int i = 0; i < X; i++)
                    for (int j = 0; j < Y; j++)
                    {
                        double temp_data = 0;
                        for (int u = 0; u < U; u++)
                            for (int v = 0; v < V;v++)
                                    temp_data += (double)data[i + u][j + v] * (double)filter[u][v];
                        temp_image[i+U/2][j+V/2]= temp_data;
                    }
            else
                for (int i = 0; i < X; i++)
                    for (int j = 0; j < Y; j++)
                    {
                        double temp_data = 0;
                        for (int u = 0; u < U; u++)
                            for (int v = 0; v < V; v++)
                                temp_data += (double)temp_image[i + u][j + v] * (double)filter[u][v];
                        data[i + U / 2][j + V / 2] = temp_data;
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

    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
    std::cout << "Duration: " << duration.count()<< std::endl;
    return 1;
}