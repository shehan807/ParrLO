#!/bin/bash

module load openblas/0.3.20-7um3t6
module load gcc/10.3.0-o57x6h
module load cuda/11.7.0-7sdye3
module load cmake/3.23.1-327dbl
module load boost/1.79.0-vkqksw
module load openmpi/4.1.4

export PKG_CONFIG_PATH=/storage/home/hhive1/sparmar32/projects/lib/magma/lib/pkgconfig:$PKG_CONFIG_PATH
export CUDA_LIB=$LDFLAGS

rm -rf build
mkdir build
cd build

cmake -DBUILD_FOR_GPU=ON -DCMAKE_EXE_LINKER_FLAGS="${CUDA_LIB} -lcudart -lcudadevrt -lcublas -lcusparse -L${BOOSTROOT}/lib/libboost_program_options.so" ..
make -j16
