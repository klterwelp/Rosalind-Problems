# Transcribing DNA into RNA
## Given a DNA string t having length at most 1000 nt.
## Return: The transcribed RNA string of t.

library(tidyverse)
#load tidyverse library, for readr

DNA <- read_file("./Rosalind-Input/rosalind_rna.txt")
# create character string variable DNA from input file 

gsub("T", "U", DNA)
# replace all Ts with U in string DNA 
