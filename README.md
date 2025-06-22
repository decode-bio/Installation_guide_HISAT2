# Objective
To document the step by step process of installing HISAT2 into the Linux system.

# HISAT2
HISAT2 (Hierarchical Indexing for Spliced Alignment of Transcripts 2) is an ultrafast, memory-efficient aligner for mapping next-generation sequencing reads—whole-genome, exome or transcriptome—to either a single reference genome or a population of genomes. It’s the successor to both HISAT and TopHat2, incorporating years of spliced-alignment refinements into one tool.
It builds a Hierarchical Graph FM-index (HGFM), which breaks the genome into small, per-chromosome indexes and then overlays a graph representation of known variants and splice-junctions. This strategy lets it rapidly find both contiguous and spliced alignments—without the huge usage of RAM in traditional methods.

# Step 1
Firstlt, ensure that your linux sytem is installed with the python, if not lets not worry and install python.
```
python --version
# or
python3 --version
```
if output is like below
![image](https://github.com/user-attachments/assets/aa09fd01-f54b-4452-b9b3-00b592cb715f)

So install it
```
sudo apt install python3
```
Can recheck with the above command to get the output mentioned below:
![image](https://github.com/user-attachments/assets/d37658d3-8d62-49e8-9601-76007a49415e)

---
# Step 2
Install the hisat2, by writing the followign command
```
sudo apt install hisat2
```
![image](https://github.com/user-attachments/assets/00c262be-2291-4552-9c19-141f2ca15634)

Type Y (yes) and enter
![image](https://github.com/user-attachments/assets/e582a767-323b-41a9-b0b7-935cf85ceb26)
HIsat 2 is installed succesuffuly. So to check the installation 
```
hisat2 -version
```
It also tell you the complete path where it is stored
![image](https://github.com/user-attachments/assets/c2e6c1be-a6e8-4ece-84b1-d7cb2c8e2850)

# Step 3
Now it is important to get the reference genome to map sample data with it. To get the refernce genome can go to ENSEMBL website or can downlaod it from the follwoing link:
* LINK: https://daehwankimlab.github.io/hisat2/download/
* Before dowloadng it, make sure to make an empty directory named HISAT2 where we store our reference genome.

```
wget https://genome-idx.s3.amazonaws.com/hisat/grch38_genome.tar.gz
```
Likewise we can download the SNP reference genome, transalated reference genome according to the need.
![image](https://github.com/user-attachments/assets/0c6d9db2-c464-4bbe-aabc-430e8bb02922)

As it is a big file, it will take few minutes or hours(like mine, depend upon net connectivity..lol) to download.
# Step 4
Now lets unzip the file content using the following command
```
tar -vxzf grch38_genome.tar.gz
```
OUTPUT
![image](https://github.com/user-attachments/assets/f0cb79fa-24bf-45b1-afb6-97b9a1886bc5)

Now as our genome files are extracted, we can use this reference human genime data for the indexing in RNA-seq. WGS, exome-seq, Chip-seq etc. & many more. 
* Thanks and Happy decoding
