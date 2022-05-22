# Evaluating the Robustness to Noise of NETISCE
This repository contains the computations for evaluating NETISCE's robustness to noisy initial states data. We evaluated this metric in the von Dassow ODE model of Drosophila Segement Polarity Genes and the Zhou model of pancreatic cell fate differentiation.

The original study of controlling Drosophila development using the FVS Control theory was performed by Zanudo et al. in[Structure-based control of complex networks with nonlinear dynamics](https://www.pnas.org/doi/10.1073/pnas.1617387114) using the von Dassow Segment Polarity genes ODE model, originally published in [ The segment polarity network is a robust developmental module.](https://www.nature.com/articles/35018085). The ODE model was obtained form xyz, and the initial states were extracted from the supplementary material of [Zanudo et al.](link). The study of pancreatic cell fate differentiation was performed by Zhou et al. in "[Predicting Pancreas Cell Fate Decisions and Reprogramming with a Hierarchical Multi-Attractor Model](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0014752)". The model and parameters were extracted from Zhou et al.

Each Folder contains the following:

## copasi
This folder contains the copasi files for simulating the mathematical model.

## noise-initial-states
These folders contain the initial states with 1%,5%,10%,20%,30%,40%,and 50% noise that were generated from copasi using the Parameter Scan function.

## NETISCE
This folder contains a sample NETISCE run for simulating 1,000 sets of triplicates for a noise level. THese computations were run on an hpc, and the shell files have been included.
