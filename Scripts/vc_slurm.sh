#!/usr/bin/bash

#SBATCH --account       ga03793
#SBATCH --job-name      VC_linear 
#SBATCH --cpus-per-task 8 
#SBATCH --mem           32G
#SBATCH --time          2:00:00

module purge
module load BCFtools/1.9-GCC-7.4.0
module load SAMtools/1.9-GCC-7.4.0
module load BWA/0.7.17-GCC-9.2.0

#indexing the reference sample
bwa index GCF_000191525.1_ASM19152v1_genomic.fna 

#creating VCF files for each sample file considering GCF_000191525.1_ASM19152v1_genomic.fna as reference
#export OMP_NUM_THREADS=1
bwa mem -R "@RG\tID:Simulation_SNP_5000\tSM:Simulation_SNP_5000\tLB:L1" GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_5000.simseq.genome.fa > Simulation_SNP_5000.sam
samtools view -bS Simulation_SNP_5000.sam | samtools sort - > Simulation_SNP_5000.bam
bcftools mpileup -Ou -f GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_5000.bam | bcftools call -vmO z -o Simulation_SNP_5000.vcf.gz
bcftools index Simulation_SNP_5000.vcf.gz 

bwa mem -R "@RG\tID:Simulation_INDEL_5000\tSM:Simulation_INDEL_5000\tLB:L1" GCF_000191525.1_ASM19152v1_genomic.fna Simulation_INDEL_5000.simseq.genome.fa > Simulation_INDEL_5000.sam
samtools view -bS Simulation_INDEL_5000.sam | samtools sort - > Simulation_INDEL_5000.bam
bcftools mpileup -Ou -f GCF_000191525.1_ASM19152v1_genomic.fna Simulation_INDEL_5000.bam | bcftools call -vmO z -o Simulation_INDEL_5000.vcf.gz
bcftools index Simulation_INDEL_5000.vcf.gz 

bwa mem -R "@RG\tID:Simulation_SNP_4000_INDEL_4000\tSM:Simulation_SNP_4000_INDEL_4000\tLB:L1" GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_4000_INDEL_4000.simseq.genome.fa > Simulation_SNP_4000_INDEL_4000.sam
samtools view -bS Simulation_SNP_4000_INDEL_4000.sam | samtools sort - > Simulation_SNP_4000_INDEL_4000.bam
bcftools mpileup -Ou -f GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_4000_INDEL_4000.bam | bcftools call -vmO z -o Simulation_SNP_4000_INDEL_4000.vcf.gz
bcftools index Simulation_SNP_4000_INDEL_4000.vcf.gz

bwa mem -R "@RG\tID:Simulation_SNP_4000_INDEL_4000_INV_4\tSM:Simulation_SNP_4000_INDEL_4000_INV_4\tLB:L1" GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_4000_INDEL_4000_INV_4.simseq.genome.fa > Simulation_SNP_4000_INDEL_4000_INV_4.sam
samtools view -bS Simulation_SNP_4000_INDEL_4000_INV_4.sam | samtools sort - > Simulation_SNP_4000_INDEL_4000_INV_4.bam
bcftools mpileup -Ou -f GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_4000_INDEL_4000_INV_4.bam | bcftools call -vmO z -o Simulation_SNP_4000_INDEL_4000_INV_4.vcf.gz
bcftools index Simulation_SNP_4000_INDEL_4000_INV_4.vcf.gz

bwa mem -R "@RG\tID:Simulation_SNP_4000_INDEL_4000_CNV_4\tSM:Simulation_SNP_4000_INDEL_4000_CNV_4\tLB:L1" GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_4000_INDEL_4000_CNV_4.simseq.genome.fa > Simulation_SNP_4000_INDEL_4000_CNV_4.sam
samtools view -bS Simulation_SNP_4000_INDEL_4000_CNV_4.sam | samtools sort - > Simulation_SNP_4000_INDEL_4000_CNV_4.bam
bcftools mpileup -Ou -f GCF_000191525.1_ASM19152v1_genomic.fna Simulation_SNP_4000_INDEL_4000_CNV_4.bam | bcftools call -vmO z -o Simulation_SNP_4000_INDEL_4000_CNV_4.vcf.gz
bcftools index Simulation_SNP_4000_INDEL_4000_CNV_4.vcf.gz

