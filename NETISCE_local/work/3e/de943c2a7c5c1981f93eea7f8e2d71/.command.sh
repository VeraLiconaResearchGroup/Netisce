#!/bin/bash -ue
generate_basal_states.py 10 4 init.txt attr -1,0,1
gen_insilico_mut.py 10 4 mutations.csv
