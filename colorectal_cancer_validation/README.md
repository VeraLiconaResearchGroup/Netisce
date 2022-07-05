# Adaptive Resistance in Colorectal Cancer Example

This folder contains instructions to reproduce the results of simulating perturbations on FVS control nodes in a network of colorectal cancer (CRC) signaling pathways. The goal of these simulations is to identify targets that can reprogram cells from a MAPK inhibitor therapy resistant phenotype to the MAPK inhibitor therapy sensitive fate. You can read the original report here: link

The original study of reversion of resistance to MAPKi therapy was performed by Park et al. in "[Feedback analysis identifies a combination target for overcoming adaptive resistance to targeted cancer therapy (Oncogene volume 39, pages3803–3820 (2020))](https://www.nature.com/articles/s41388-020-1255-y)". The network and internal-marker nodes were extracted from the publication and its supplementary material. The normalized expression data  and mutational profiles used for initial activities in NETISCE was downloaded from the Cancer Cell Line Encyclopedia from[ The Cancer Dependency Map](https://depmap.org/portal/cell_line/ACH-000552?tab=mutation).