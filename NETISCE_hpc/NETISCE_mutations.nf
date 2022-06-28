#!/usr/bin/env nextflow

params.expressions = "$baseDir/input_data/expressions.csv"
params.network = "$baseDir/input_data/network.sif"
params.samples = "$baseDir/input_data/samples.txt"
params.internal_control="$baseDir/input_data/internal_marker.txt"
params.mutations="$baseDir/input_data/mutations.csv"
params.alpha = 0.9
params.undesired = 'resistant'
params.desired = 'sensitive'
params.filter ="strict"


params.kmeans_min_val = 2
params.kmeans_max_val = 8


params.num_nodes = 6 // that have expression data
params.num_states = 100000

params.randseed=4

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
    path "internal-marker*" from params.internal_control

    output:
    path 'exp_internalmarkers.txt' into records_exp_icns
    
    script:
    """
    get_RONs.py attrs_exp.txt internal-marker*
    """
    
}



process insilico_inits {
    input: 
    path "mutations.csv" from params.mutations
    path 'samples.txt' from params.samples

    output: 
    path 'init.txt' into records_insilicoinit
    path 'insilico_mut.txt' into records_insilicomut

    script:
    """
    generate_basal_states.py $params.num_states $params.num_nodes init.txt attr -1,0,1
    gen_insilico_mut.py $params.num_states $params.num_nodes mutations.csv samples.txt
    """
}
process insilico {
    input:
    path 'expressions.csv' from params.expressions
    path 'network.sif' from params.network
    path 'samples.txt' from params.samples
    path 'init.txt' from records_insilicoinit
    path 'insilico_mut.txt' from records_insilicomut
 
    output:
    path 'attrs_insilico*' into records_insilico
 
    script:
 
    """
    SFA_insilico_mut.py "network.sif" "expressions.csv" "samples.txt" init.txt insilico_mut.txt 
    """
}

process getFVS {
    publishDir 'results', mode: 'copy', overwrite: true

    input:
    path 'network.sif' from params.network
 
    output:
    path 'fvs.txt' into records_fvs
    script:
    """
    FVS_run.py network.sif $params.randseed
    """
}

process remove_mutants {
    publishDir 'results', mode: 'copy', overwrite: true

    input:
    path "fvs.txt" from records_fvs
    path "mutations.csv" from params.mutations
 
    output:
    path 'fvs-no-mutated-genes.txt' into records_fvs_nomuts
    script:
    
    """
    remove-mutants.py mutations.csv fvs.txt
    """
}

process perturbation_inits {
    input:
    path "fvs-no-mutated-genes.txt" from records_fvs_nomuts

    
    output:
    path 'fvs_init.txt' into records_pert_inits
    

    script:
    """
    generate_perts.py fvs-no-mutated-genes.txt fvs_init.txt pert -1,0,1
    """
}

process sfa_perts {
    input:
    path 'expressions.csv' from params.expressions
    path 'mutations.csv' from params.mutations
    path 'network.sif' from params.network
    path 'samples.txt' from params.samples
    path "fvs-no-mutated-genes.txt" from records_fvs_nomuts
    path 'fvs_init.txt' from records_pert_inits
 
    output:
    path 'pert*' into records_perts
 
    script:
    """
    SFA_virtscreen_mut.py network.sif expressions.csv $params.undesired samples.txt fvs-no-mutated-genes.txt fvs_init.txt mutations.csv
    
    """
}

process check_icns{
    publishDir 'results', mode: 'copy', overwrite: true
    input:
    path 'exp_internalmarkers.txt' from records_exp_icns
    path 'samples.txt' from params.samples

    output:
    path 'experimental_internalmarkers.png' into records_icn_check

    script:
    """
    module load R/3.6.3
    icn_check1.R exp_internalmarkers.txt samples.txt
    """
    
}

process kmeans {
    publishDir 'results', mode: 'copy', overwrite: true

    input:
    path 'attrs_exp.txt' from records_expattr
    path 'attrs_insilico.txt' from records_insilico
 
    output:

    path 'elbow.png' into records_elbowplots
    path 'silhouette.png' into records_silplots
    path 'kmeans.txt' into records_kmeans
    
    script:
    """
    datasets=\$(ls -m attr* | sed 's/ //g')
    kmeans_full.py \$datasets $params.kmeans_max_val
    """
}

process classification {
    input:
    path 'kmeans.txt' from records_kmeans
    path 'pert*' from records_perts
    path 'samples.txt' from params.samples
    path 'attrs_exp.txt' from records_expattr
    path 'attrs_insilico*' from records_insilico
    output:
    path 'class_*' into records_classification
    
    script:
    """
    export train=\$(ls -m attr* | sed 's/ //g')
    for x in pert*
    do
        NB.py \$train \$x kmeans.txt 
        RF.py \$train \$x kmeans.txt
        SVM.py \$train \$x kmeans.txt
    done
    """
}

process consensus {
    publishDir 'results', mode: 'copy', overwrite: true
    input:
    path '*' from records_classification
    path 'kmeans.txt' from records_kmeans
    path 'samples.txt' from params.samples
    
    output:
    path 'crit1perts.txt' into records_consensus
    
    script:
    """
    datasets=\$(ls -m class_* | tr -d '[:space:]')

    export desired_sample=\$(grep $params.desired samples.txt | head -1 | sed 's/\t.*//')
    export desired_cluster=\$(grep \$desired_sample kmeans.txt | head -1 | sed 's/.*\s//')
    get_clusterconsensus.py \$datasets \$desired_cluster
    """
    
}

process internal_control_node_analysis {  
    publishDir 'results', mode: 'copy', overwrite: true   
    input:
    path 'pert*' from records_perts
    path 'crit1perts.txt' from records_consensus
    path "internal-marker*" from params.internal_control
    
    output:
    path '*_internal_markers.txt' into records_pert_icns
    
    script:
    """
    for x in pert*
    do
    echo \$x
    get_RONs_getperts.py \$x internal-marker* 'crit1perts.txt'
    done
    """
    
}


process filtering_by_icn {  
    
    input:
    path 'exp_internalmarkers.txt' from records_exp_icns
    path 'pert_logss*' from records_pert_icns
    path 'samples.txt' from params.samples

    output:
    path '*_filtered_perturbations.txt' into records_filtered_perts
    
    script:
    """
    module load R/3.6.3
    for x in pert_logss*
    do
    crit2.R exp_internalmarkers.txt samples.txt \$x $params.desired $params.undesired $params.filter
    done
    """
    
}

process extract_perts {  
    
    input:
    path 'fvs_init.txt' from records_pert_inits
    path "fvs-no-mutated-genes.txt" from records_fvs_nomuts
    path '*_filtered_perturbations.txt' from records_filtered_perts


    output:
    path 'extract_perts.txt' into records_extracted_perts
    
    script:
    """
    for x in *_filtered_perturbations.txt
    do
    get_perts.py fvs_init.txt fvs-no-mutated-genes.txt \$x
    done
    """
    
}

process translate_perts {  
    publishDir 'results', mode: 'copy', overwrite: true
    
    input:
    path 'extract_perts.txt' from records_extracted_perts


    output:
    path 'successful_controlnode_perturbations.txt' into records_translated_perts
    
    script:
    """
    module load R/3.6.3
     pertanalysis.R extract_perts.txt
    """
    
}


