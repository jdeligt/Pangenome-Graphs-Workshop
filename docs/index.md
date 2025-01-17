<center>
# Pangenome Graphs
This repository includes sample datasets and scripts, which are utilized for the construction of pangenome graphs. 
It provides a walkthrough of each step executed within the NeSI environment (we do include pointers to running locally but these are not stress tested).
</center>

<center>
![image](./theme_figures/Genome%20graphs4.jpeg)
</center>

## Learning Objectives
Participants will learn about pangenome concepts and gain practical experience building and analyzing pangenome graphs. They will apply these methods to complex research questions that require understanding the relationships between multiple genomes or accounting for variability when analyzing new genomes. By the end of the course, participants will have a strong understanding of pangenome methods based on whole genome assemblies.

1. Construct graphs using the PanGenome Graph Builder (PGGB)
    - https://github.com/pangenome/pggb
3. Manipulate graphs using the Optimized Dynamic Genome/Graph Implementation (ODGI)
    - https://github.com/pangenome/odgi
5. Variant calling and inspection using the VG toolkit
    - https://github.com/vgteam/vg

!!! rectangle-list "Content"
    | **Lesson**                                        | **Overview** |  **Time**  |
    |:--------------------------------------------------|:-------------|:-----------|
    |[1. Intro](./1_Introduction_to_pangenomegraphs.md){ .md-button .md-button--primary }|Introduction to pangenome graphs| 45 min |
    |Break||10 min|
    |[2. Setup](./2_Tools_and_setup.md){ .md-button .md-button--primary }|Setup instructions for the tools and data used in this course | 30 min |
    |[3. PGGB](./3_Introduction_to_pggb.md){ .md-button .md-button--primary }|Introduction the the PGGB toolkit and it's logic| 30 min |
    |Break||10 min|
    |[4. Running](./4_Running_pggb.md){ .md-button .md-button--primary }|Running the command to construct a graph and discuss key parameters| 45 min |
    |Lunch||45 min|
    |[5. Evaluate](./5_Evaluating_pggb_output.md){ .md-button .md-button--primary }|Evaluating the constructed graph through MultiQC reports| 60 min |
    |Break||10 min|
    |[6. Variants](./6_Variant_calling.md){ .md-button .md-button--primary }|Extracting variants from a graph| 45 min |
    |Break||10 min|
    |[7. Short reads](./7_Short_reads.md){ .md-button .md-button--primary }|Mapping short reads against a pangenome graph| 60 min |



!!! quote-right "Acknowledgments"

    Zoe Yang, Erik Garrison, Andrea Guarracino, Nuzla Ismail, Patrick J. Biggs, Una Ren, Michael A Black, and Joep de Ligt


## Further reading and Extracurricular materials
After this course you might want to learn more about pangenome graphs and start using them in your own research, below are some great resources to help with that.

Documentation:
- PGGB comes with rich documentation that explains key concepts and parameters: https://pggb.readthedocs.io/en/latest/index.html

Examples and lectures:
- MemPan23 hosted a 3 day course and semniar series, check out there resources and lectures: https://pangenome.github.io/MemPanG23/
