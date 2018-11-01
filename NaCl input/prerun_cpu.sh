#!/bin/bash

ml gromacs/2018.3

gmx_mpi grompp -f NaCl_metadynamics.mdp -po NaCl_mdout.mdp -c NaCl.gro -p NaCl.top -o NaCl.tpr -n NaCl.ndx -maxwarn 4
