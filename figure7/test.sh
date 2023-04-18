#!/bin/bash
# for n in 1 2 3 4
for n in 1 
do
    # procs=$(expr 6 '*' "$n")
    procs=$(expr 1 '*' "$n")
    gpus=$n
    echo procs = $procs gpus = $gpus
    export OMP_NUM_THREADS=$procs
    # srun -N$n -n$procs --gres=gpu:$gpus ../build/src/main -c ./r1.cfg
    srun -N$n -n$procs --gres=gpu:$gpus ../build/src/main -c ./r1.cfg
done
# nvidia-smi
