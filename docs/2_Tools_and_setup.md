# Tool & setup

## Tools used in this pipeline


!!! screwdriver-wrench "Tools used for the pangenome graph pipeline"

    - Graph construction using the PanGenome Graph Builder (PGGB) (https://github.com/pangenome/pggb)
    
    - Graph manipulation through the Optimized Dynamic Genome/Graph Implementation (ODGI)(https://github.com/pangenome/odgi)
    
    - Variant calling for Next-Generation Sequencing (NGS) data using the VG toolkit(https://github.com/vgteam/vg)
    
    - Mash (https://github.com/marbl/Mash)
    - SAMtools (https://github.com/samtools/samtools)
    - simuG (https://github.com/yjx1217/simuG)
    - PGGE (https://github.com/pangenome/pgge)
    - BCFtools (https://github.com/samtools/bcftools)

## Running on NeSi

## Running locally

# Data
## Setting up your project directory

```bash
# Create a new directory in somewhere and change to that directory
mkdir pg_workshop
cd pg_workshop
# Keep a note of the absolute path of your directory
pwd
/nesi/nobackup/nesi02659/pg_workshop
```

## Preparing input data

### Genome Availability 
The National Library of Medicine is the largest library focused on biomedicine worldwide, serving as the central hub for biomedical informatics and computational biology. It has many genome assembly data and [Genome assembly ASM19152v1](https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000191525.1/) will be used for this workshop. 

---
# Procedure 
### 1. Downloading and preparing assembly data file 4Sim.fa

Please follow the procedure described in this [page](./preparing_data_files.md)

### 2. Creating an index for the sequence file and check

!!! terminal "code"

    ```bash
    # Use SAMtools to create the index file
    # In NeSI environment you will have to load the command first
    
    module load SAMtools
    
    samtools faidx ASM19152v1_pgsim.fa 
    
    cat ASM19152v1_pgsim.fa.fai
    ```

!!! success "Output"

    ```
    NC_017518.1     2248966 64      80      81
    NC_017518.1_SNP_5000    2248966 2277165 2248966 2248967
    NC_017518.1_INDEL_5000  2249048 4526156 2249048 2249049
    NC_017518.1_SNP_4000_INDEL_4000 2242147 6775238 2242147 2242148
    NC_017518.1_SNP_4000_INDEL_4000_INV_4   2242147 9017425 2242147 2242148
    NC_017518.1_SNP_4000_INDEL_4000_CNV_4   2415498 11259612        2415498 2415499
    ```
    
As per the index this assembly consists of 6 samples described in the below table. 

| Name                                | Length    | SNPs   | INDELs | INV | CNV |
|:-----                               |----------:|-------:|-------:|----:|----:|
|NC_017518.1 (Reference)              | 2,248,966 |     N/A|     N/A| N/A |  N/A|
|NC_017518.1_SNP_5000                 | 2,248,966 |   5,000|       0|   0 |   0 |
|NC_017518.1_INDEL_5000               | 2,249,048 |       0|   5,000|   0 |   0 |
|NC_017518.1_SNP_4000_INDEL_4000      | 2,153,883 |   4,000|   4,000|   0 |   0 |
|NC_017518.1_SNP_4000_INDEL_4000_INV_4| 2,242,147 |   4,000|   4,000|   4 |   0 |
|NC_017518.1_SNP_4000_INDEL_4000_CNV_4| 2,415,498 |   4,000|   4,000|   0 |   4 |