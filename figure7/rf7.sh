#!/bin/bash
#SBATCH -JgpuParrLo                                # Job name
#SBATCH -Ahive-cs207                            # Charge account
#SBATCH -N4 -n24 --gres=gpu:4                            # Number of nodes and GPUs required
#SBATCH --gres-flags=enforce-binding                # Map CPUs to GPUs
#SBATCH --mem-per-gpu=64G                           # Memory per gpu
#SBATCH -t30                                        # Duration of the job (Ex: 15 mins)
#SBATCH -phive-gpu-short                                  # Partition name (where job is submitted)
#SBATCH -oreport-%j.out                             # Combined output and error messages file
#SBATCH --mail-type=END,FAIL                  # Mail preferences
#SBATCH --mail-user=awallace3@gatech.edu            # e-mail address for notifications

cd $HOME/data/gits/ParrLO/figure7
#   Change to working directory created in $HOME

module load openblas boost openmpi

for n in 1 2 3 4
do
    procs=$(expr 6 '*' "$n")
    gpus=$n
    echo procs = $procs gpus = $gpus
    srun -N$n -n$procs --gres=gpu:$gpus ../build/src/main -c ./r1.cfg
done
# nvidia-smi
