#!/bin/sh
#SBATCH --job-name NaCl-m
#SBATCH --qos normal
#SBATCH --nodes=8
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task 24
#SBATCH --time 24:00:00
#SBATCH --partition shas

module load gromacs/2018.3

export OMP_NUM_THREADS=24

mpirun -np 8 gmx_mpi mdrun -deffnm NaCl -g NaCl_log.log -ntomp 24 -plumed plumed.dat
