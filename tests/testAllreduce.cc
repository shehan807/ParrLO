#ifdef USE_MAGMA
#include "magma_v2.h"
#endif

#include "mpi.h"
#include <iostream>
#include <vector>

int main(int argc, char** argv)
{
    MPI_Init(&argc, &argv);

    int rank, size;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    constexpr size_t N  = 10;
    constexpr size_t N2 = N * N;

    constexpr float alpha = 2.0;

    std::vector<float> v1(N2);
    for (auto& it : v1)
    {
        it = 1.0f * rank;
    }

    std::vector<float> vsum(N2, 0.0f);

#ifdef USE_MAGMA
    magma_int_t magmalog = magma_init();
    if (magmalog == MAGMA_SUCCESS)
    {
        std::cout << "MAGMA INIT SUCCESS" << std::endl;
    }
    else
    {
        return 1;
    }

    magma_int_t ld = magma_roundup(N, 32);
    magma_device_t device;
    magma_queue_t queue;

    magma_int_t cuda_arch = magma_getdevice_arch();

    magma_getdevice(&device);

    magma_queue_create(device, &queue);

    float* dv1;
    float* dvsum;
    magma_int_t ret1   = magma_smalloc(&dv1, ld * N);
    magma_int_t retsum = magma_smalloc(&dvsum, ld * N);

    // deepcopy from host to device
    magma_ssetmatrix(N, N, v1.data(), N, dv1, ld, queue);
    // calculation on device
    magma_sscal(N * ld, alpha, dv1, 1, queue);
    
    std::cout << "MAGMA (finished sscal)" << std::endl;
    std::cout << "dv[0]: " << dv1[0] << std::endl; 
    // mpi Allreduce with device
    // MPI_Allreduce(dv1, dvsum, N * ld, MPI_FLOAT, MPI_SUM, MPI_COMM_WORLD);
    MPI_Allreduce(
        MPI_IN_PLACE, dv1, N * ld, MPI_FLOAT, MPI_SUM, MPI_COMM_WORLD);
    std::cout << "MAGMA (finished allreduce)" << std::endl;

    // deepcopy from device to host
    magma_sgetmatrix(N, N, dv1, ld, v1.data(), N, queue);
    // magma_sgetmatrix(N, N, dvsum, ld, vsum.data(), N, queue);

    // mpi Allreduce with host
    // MPI_Allreduce(v1.data(), vsum.data(), N2, MPI_FLOAT, MPI_SUM,
    // MPI_COMM_WORLD);

    // print from host
    // magma_sprint(N,N,v1.data(),N);
    // magma_sprint(N,N,vsum.data(),N);

    // check the results
    int check;
    check = (int)alpha * (size - 1) * size / 2;

    for (float result : v1)
    {
        if ((int)result != check) return 1;
    }

    magma_queue_destroy(queue);

    magma_int_t ret_dv1_free = magma_free(dv1);

    magma_int_t ret_dvsum_free = magma_free(dvsum);

    magmalog = magma_finalize();

    if (magmalog == MAGMA_SUCCESS)
    {
        std::cout << "MAGMA FINALIZE SUCCESS" << std::endl;
    }
    else
    {
        return 1;
    }

#endif

    MPI_Finalize();

    return 0;
}
