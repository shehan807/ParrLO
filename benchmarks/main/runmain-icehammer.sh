#!/bin/bash
#SBATCH --job-name=ParrLO
#SBATCH -N 2
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --gres=gpu:4
#SBATCH --mem-per-cpu=8gb
#SBATCH -w ice[192,193]
#SBATCH --output=./run.log

module load cuda/11.1.1
module load cmake/3.20.3
module load magma/2.7.1
module load gcc/8.3.0
module load mpich/gcc/3.2.1
module load boost/1.72


BUILDDIR=../../build/src
EXE=$BUILDDIR/main

srun $EXE -c $BUILDDIR/../../benchmarks/main/input.cfg
