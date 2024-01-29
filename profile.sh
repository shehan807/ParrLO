VAR=10000; 
sed -i "s/nrows=.*/nrows=${VAR}/g" benchmarks/main/input.cfg; 
sed -i "s/ncols=.*/ncols=${VAR}/g" benchmarks/main/input.cfg; 
srun nvprof --metrics all --log-file profile.out ./build/src/main -c benchmarks/main/input.cfg; grep "Floating Point Operations(Single Precision)" profile.out
