#Complementing a Strand of DNA
## Given: DNA string
## Return: reverse complement (reverse symbols and then read backwards)

library(tidyverse)
library(Biostrings)
#load tidyverse library, for readr
#load Biostrings for DNAString and reverseComplement 

DNA <- read_file("./Rosalind-Input/rosalind_revc.txt")
# create character string variable input from input file 
DNA <- gsub("\r\n", "", DNA)
DNA 

as.character(reverseComplement(DNAString(DNA)))
#turns DNA into DNA string
#reverseComplement from Biostring finds reverse complement
#Base R as.character turns the DNAString into a character string we can paste

