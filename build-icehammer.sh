#!/bin/bash

module load openblas/0.3.13
module load gcc/8.3.0
module load cuda/11.1.1
module load cmake/3.20.3
module load boost/1.72
module load magma/2.7.1

export CUDA_LIB=-L$CUDA_PATH

rm -rf build
mkdir build
cd build

cmake -DBUILD_FOR_GPU=ON -DCMAKE_EXE_LINKER_FLAGS="${CUDA_LIB} -lcudart -lcudadevrt -lcublas -lcusparse -lgfortran -L${BOOST_ROOT}/lib/libboost_program_options.so" ..
make -j16
