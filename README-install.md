## Building on COC-ICE
1. clone magma 2.7.1 from the official repo
```
git clone https://bitbucket.org/icl/magma.git
```
2. cd into the magma repo and copy the openblas make.inc example into the project root dir
```
cp make.inc-examples/make.inc.openblas ./make.inc
```
3. cd into the magma repo and create a build.sh script as follows. These build instructions are for CUDA 11.1 and the V100s on PACE.
```
#!/bin/bash

module load openblas/0.3.13
module load gcc-compatibility/8.3.0
module load cuda/11.1

export BACKEND=cuda
export OPENBLASDIR=$OPENBLAS_ROOT
export CUDADIR=$CUDA_PATH
export GPU_TARGET=Volta

make -j16 install prefix=/path/to/where/you/want/magma
```
4. launch a cpu job and run the build script that you just made
```
qsub -I -q coc-ice-long -l nodes=1:ppn=16,pmem=2gb,walltime=1:00:00
bash build.sh
```
5. cd into the location where you installed magma and replace @CXXFLAGS@ and @MAGMA_INCLUDE@ if they haven't been substituted with their associated values
```
cd /path/to/where/you/want/magma
vim lib/pkgconfig/magma.pc
```
Replace this line:
```
Cflags: -I${includedir} @CXXFLAGS@ @MAGMA_INCLUDE@
```
With this line:
```
Cflags: -I${includedir} -O3 -fPIC -DNDEBUG -DADD_ -Wall -fopenmp -std=c++11 -I/usr/local/pace-apps/manual/packages/cuda/11.1/include
```
6. cd back into the ParrLO repo and edit the build-coc-ice.sh script to point pkgconfig to the directory where you installed magma
```
export PKG_CONFIG_PATH=/path/to/magma/lib/pkgconfig:$PKG_CONFIG_PATH
```
7. note that the `CMakeLists.txt` file has been modified from the original with this line to support the `boost` lib that is avialable on PACE
```
add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
```
8. ensure you're still on a compute node or relaunch a job for compiling ParrLO, then run the build script
```
bash build-coc-ice.sh
```
9. if the build completes successfully, then you should be able to launch a GPU job, load the modules from the build script, and then run the tests located in `ParrLO/build/tests`


## Original Instructions
From main directory:
```
mkdir build
cd build
cmake ..
make
```

To use magma:
```
cmake -DBUILD_FOR_GPU=ON -DCMAKE_EXE_LINKER_FLAGS="${CUDA_LIB} -lcudart -lcudadevrt -lcublas -lcusparse" ..
```

(or call scripts/condo_gpu_cmake)

Note: the appropriate modules may need to be loaded (openBLAS, cuda, magma,...)

To format the code correctly, you need clang-format 6.0 that you can dowload
here:
  - for linux: https://github.com/dealii/dealii/releases/download/v9.0.0/clang-format-6-linux.tar.gz
  - for mac: https://github.com/dealii/dealii/releases/download/v9.0.0/clang-format-6-darwin.tar.gz
To format the code you need to configure with the following options:
```
-DPLA_WITH_CLANG_FORMAT=ON -DCMAKE_PREFIX_PATH=/path/to/clang-format
```
Then you can format the code using `make format`
