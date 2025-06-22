#!/bin/bash

# Hisat2 installation steps

# Step1: To download python into the system

sudo apt install python3

# Step2: To install hisat 2, 

sudo apt install hisat2

# Step3: to fetch the human genome reference file from AWS cloud. Before downloading make sure to make new directory name HISAT2 for future.

wget https://genome-idx.s3.amazonaws.com/hisat/grch38_genome.tar.gz

# Step4: Extract the file content

tar -vxzf grch38_genome.tar.gz

# now can use reference genome for various downstream analysis.
