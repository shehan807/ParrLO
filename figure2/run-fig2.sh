# echo "2048 x 2048"
# srun ../build/src/main -c ./r1.cfg
# echo "10304 x 10304"
# srun ../build/src/main -c ./r2.cfg

# for n in 1092 2096 3140 4146 5156 6210 7210 8256 10304
for n in 9260
do
    echo $n by $n 
    sed -i "s/.*nrows.*/nrows=$n/" r1.cfg
    sed -i "s/.*ncols.*/ncols=$n/" r1.cfg 
    srun ../build/src/main -c ./r1.cfg
done
