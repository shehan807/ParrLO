module purge
module load gcc/10.3.0-o57x6h
module load openblas/0.3.18-nk2wzj
module load openmpi/4.1.4
module load boost/1.79.0-vkqksw
srun ./build/src/main -c ./benchmarks/main/input.cfg
