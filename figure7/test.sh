for n in 1 2 3 4
do
    procs=$(expr 2 '*' "$n")
    gpus=2
    echo procs = $procs gpus = $gpus
    # srun -N$n -n$procs --gpus:$n ../build/src/main -c ./r1.cfg
    # srun -N$n -n$procs --gres=gpu:2 ../build/src/main -c ./r1.cfg
done
