#!/usr/bin/env nextflow

params.network = "$baseDir/../input_data/network.sif"
params.sets = 150


process get_fvses {
    input: 
    path "network.sif" from params.network

    output: 
    path 'FVS_raw.txt' into records_fvses

    script:
    """
    FVS_run.py network.sif $params.sets
    """
}

process filter_fvs {  
    publishDir './', mode: 'copy', overwrite: true
    
    input:
    path 'FVS_raw.txt' from records_fvses


    output:
    path 'FVSes.txt' into records_finalfvs
    
    script:
    """
    fvs_processing.R FVS_raw.txt
    """
    
}


