#/usr/bin/bash
# module restore parrlo
export PKG_CONFIG_PATH=/storage/hive/project/chem-sherrill/awallace43/share/magma/install/lib/pkgconfig
# export CUDA_LIB=$LDFLAGS

# export CC=$CONDA_PREFIX/bin/gcc
# export CXX=$CONDA_PREFIX/bin/g++
export CC=gcc
export CXX=g++
export MPICC=mpicc
export MPICXX=mpicxx

export BACKEND=cuda
export OPENBLASDIR=$OPENBLAS_ROOT
export CUDADIR=$CUDA_PATH
export GPU_TARGET=Volta

rm -rf build
mkdir -p build
cmake -DCMAKE_INSTALL_PREFIX=./install -DMAGMA_DIR=../magma/install # -DCMAKE_PREFIX_PATH=/storage/pace-apps/manual/packages/openmpi/4.1.4/gcc-10.3.0
cmake -S. -Bbuild -DBUILD_FOR_GPU=ON -DCMAKE_EXE_LINKER_FLAGS="${CUDA_LIB} -lcudart -lcudadevrt -lcublas -lcusparse -DCMAKE_BUILD_TYPE=Release" -DMAGMA_DIR=../magma/install
cmake --build build 
