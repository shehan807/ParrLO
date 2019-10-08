#ifndef TIMER_HPP
#define TIMER_HPP

#include <cstring>
#include <iomanip>
#include <iostream>
#include <mpi.h>
#include <sys/time.h>
#include <time.h>

#ifdef _OPENMP
#include <omp.h>
#endif

class Timer
{
private:
    clock_t clk_;
    std::string name_;
    double t_;
    double total_cpu_;
    double total_real_;
    bool running_;
    int ncalls_;

    MPI_Comm comm_;

    double cpu() const
    {
        if (running_)
        {
            return total_cpu_ + ((double)(clock() - clk_)) / CLOCKS_PER_SEC;
        }
        else
        {
            return total_cpu_;
        }
    };

    double gtod(void) const;

    double real() const
    {
        if (running_)
        {
            return total_real_ + gtod() - t_;
        }
        else
        {
            return total_real_;
        }
    };

public:
    Timer(const std::string& name, MPI_Comm comm = MPI_COMM_WORLD)
        : name_(name),
          total_cpu_(0.0),
          total_real_(0.0),
          running_(false),
          ncalls_(0),
          comm_(comm){};

    void reset()
    {
        total_cpu_  = 0.0;
        total_real_ = 0.0;
        running_    = false;
        ncalls_     = 0;
    };

    void start()
    {
#ifdef _OPENMP
        if (omp_get_thread_num() == 0)
#endif
        {
            clk_     = clock();
            t_       = gtod();
            running_ = true;
            ncalls_++;
        }
    };

    bool running() const { return running_; };

    void stop()
    {
#ifdef _OPENMP
        if (omp_get_thread_num() == 0)
#endif
            if (running_)
            {
                total_cpu_ += ((double)(clock() - clk_)) / CLOCKS_PER_SEC;
                total_real_ += gtod() - t_;
                running_ = false;
            }
    };

    void print(std::ostream& os) const;
};

#endif
