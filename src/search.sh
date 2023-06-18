#!/bin/sh


for tournament in 2 10 20 50 100
do
  for crossover in 0.1 0.3 0.5 0.7 0.9
  do
       string="crossover_${crossover}_tournament_${tournament}_gen_150"
       echo $string
       ./script.sh $crossover $tournament 150  
  done
done

    
