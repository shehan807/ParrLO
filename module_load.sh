module purge; module load openblas gcc cuda cmake boost openmpi

export PKG_CONFIG_PATH=/storage/home/hhive1/sparmar32/projects/lib/magma/lib/pkgconfig:$PKG_CONFIG_PATH
export CUDA_LIB=$LDFLAGS
