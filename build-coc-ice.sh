#!/bin/bash

module load openblas/0.3.13
module load gcc-compatibility/8.3.0
module load cuda/11.1
module load cmake/3.20.3
module load boost/1.70.0

#export PKG_CONFIG_PATH=/storage/home/hcocice1/bjohnson361/local/magma/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=/path/to/magma/lib/pkgconfig:$PKG_CONFIG_PATH
export CUDA_LIB=$LDFLAGS

rm -rf build
mkdir build
cd build

cmake -DBUILD_FOR_GPU=ON -DCMAKE_EXE_LINKER_FLAGS="${CUDA_LIB} -lcudart -lcudadevrt -lcublas -lcusparse -L${BOOSTROOT}/lib/libboost_program_options.so" ..
make -j16
