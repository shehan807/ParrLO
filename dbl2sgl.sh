sed -i "s/magma_d/magma_s/g" *.cc
sed -i "s/magmablas_d/magmablas_s/g" *.cc
sed -i "s/double/float/g" *.cc
sed -i "s/0.0f1/0.01f/g" *.cc
sed -i "s/0.0/0.0f/g" *.cc
sed -i "s/MPI_DOUBLE/MPI_FLOAT/g" *.cc
sed -i "s/magma_sevice/magma_device/g" *.cc
