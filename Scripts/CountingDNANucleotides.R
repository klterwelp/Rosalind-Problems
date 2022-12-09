# Counting DNA Nucleotides
## Given: A DNA string s of length at most 1000 nt
## Return: four integers counting times 'A', 'C', 'G', 'T' occur 

library(tidyverse)
#loads library for tidyverse, str_count is from stringr package

sequence <- read_file("./Rosalind-Input/rosalind_dna.txt")
#input sequence file from rosalind into input folder, turns into character string variable
bases <- c("A", "C", "G", "T")
#order of bases to check 
str_count(sequence, bases)
#counts string named sequence for each of the bases A, C, G, T