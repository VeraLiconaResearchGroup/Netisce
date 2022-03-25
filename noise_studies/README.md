# Evaluating the Robustness to Noise of NETISCE
This repository contains the computations for evaluating NETISCE's robustness to noisy initial states data. We evaluated this metric in the von Dassow ODE model of Drosophila Segement Polarity Genes and the Zhou model of pancreatic cell fate differentiation.

Each Folder contains the following:

## copasi
This folder contains the copasi files for simulating the mathematical model.

## noise-initial-states
These folders contain the initial states with 1%,5%,10%,20%,30%,40%,and 50% noise that were generated from copasi using the Parameter Scan function.

## NETISCE
This folder contains a sample NETISCE run for simulating 1,000 sets of triplicates for a noise level. THese computations were run on an hpc, and the shell files have been included.
