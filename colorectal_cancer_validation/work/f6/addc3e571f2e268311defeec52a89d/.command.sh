#!/bin/bash -ue
generate_basal_states.py 10000 87 init.txt attr -1,0,1
gen_insilico_mut.py 10000 87 mutations.csv
