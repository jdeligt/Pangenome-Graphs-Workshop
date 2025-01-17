#!/bin/bash

#SBATCH --account       ga03793
#SBATCH --job-name      24NM_10k95x
#SBATCH --cpus-per-task 8 
#SBATCH --mem           4G
#SBATCH --time          3:00:00

module purge



WD=/home/zyang/pg_workshop #Working Directory

data=/home/zyang/pg_workshop/24NM.fa
output=/home/zyang/pg_workshop


 


pggb -i $data -s 10000 -p 95 -n 24 -x auto -t 24 -S -m -o $output/24NM_10K95x -V 'NC_017518:#' 
