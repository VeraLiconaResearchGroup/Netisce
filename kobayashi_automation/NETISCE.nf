#!/usr/bin/env nextflow

params.expressions = "$baseDir/input_data/expression.csv"
params.network = "$baseDir/input_data/network.sif"
params.internal_control="$baseDir/input_data/internal-marker-nodes.txt"
params.mutations="$baseDir/input_data/mutations.csv"
params.alpha = 0.9



process sfa_exp {
    input: 
    path "expressions.csv" from params.expressions
    path "network.sif" from params.network
    path "mutations.csv" from params.mutations

    output: 
    path 'attrs_exp.txt' into records_expattr

    script:
    """
    SFA_exp_attr_mut.py network.sif expressions.csv attrs_exp.txt mutations.csv
    """
}

process get_exp_internal_control_nodes {  
    publishDir 'results', mode: 'copy', overwrite: true
    
    input:
    path 'attrs_exp.txt' from records_expattr
    path "internal_marker.txt" from params.internal_control

    output:
    path 'exp_internalmarkers.txt' into records_exp_icns
    
    script:
    """
    get_RONs.py attrs_exp.txt internal_marker.txt
    """
    
}

