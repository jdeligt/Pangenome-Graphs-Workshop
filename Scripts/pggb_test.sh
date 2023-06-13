#!/bin.bash
module load Singularity
#export container to a variable for convenience
WD=/nesi/nobackup/nesi02659/pg_workshop #Working Directory
container=/nesi/project/nesi02659/software/pggb/pggb_0.5.3.simg
data=${WD}/ASM19152v1_pgsim.fa

#Bind filesystem to container image 
export SINGULARITY_BIND="${WD}, /nesi/project/nesi02659/"

singularity exec ${container} pggb -i $data -s 1000 -p 95 -n 6 -k 79 -t 2 -S -m -o output -V 'NC_017518.1:#' 
