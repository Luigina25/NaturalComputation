#!/bin/sh



#mutation_probability=$1
crossover_probability=$1
tournament=$2
generations=$3
#name=$5
for seed in 101304 432071 752782 659486 929644 412962 205916 202578 785371 215023 523700 548219 864499 129638 976786 129442 976984 327105 131493 835671 178753 390797 346876 814265 250751 820127 253826 402281 342547 299942
do
    string="mutation_0.5_crossover_${crossover_probability}_tournament_${tournament}_gen_${generations}_MUTIND"
    python3 ponyge.py --random_seed $seed --experiment_name $string  --crossover_probability $crossover_probability --tournament_size $tournament --generations $generations  
done
