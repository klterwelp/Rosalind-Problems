# Translating RNA into Protein 

library(tidyverse)
# loads tidyverse, necc. for readr, stringr

# input <- scan("./Rosalind-Input/rosalind_hamm.txt", what = character()) %>%
  # as.vector()

input <- read_file("./Rosalind-Input/rosalind_prot.txt") 

codons <- stri_sub(input, seq(1, str_length(input), by = 3), length = 3)
#stringi takes input, from  = seq starting at 1 by 3, length of characters is 3
# basically breaking string into codon 3-character vector 
codons

codon_table <- c(F='UUU', L='CUU', I='AUU', V='GUU', F='UUC', L='CUC', I='AUC', V='GUC', L='UUA', L='CUA', I='AUA',V='GUA', L='UUG', L='CUG', M='AUG', V='GUG', S='UCU', P='CCU', T='ACU', A='GCU', S='UCC', P='CCC', T='ACC', A='GCC', S='UCA', P='CCA', T='ACA', A='GCA', S='UCG', P='CCG', T='ACG', A='GCG', Y='UAU', H='CAU', N='AAU', D='GAU', Y='UAC', H='CAC', N='AAC', D='GAC', Stop='UAA', Q='CAA', K='AAA', E='GAA', Stop='UAG', Q='CAG', K='AAG', E='GAG', C='UGU', R='CGU', S='AGU', G='GGU', C='UGC', R='CGC', S='AGC', G='GGC', Stop='UGA', R='CGA', R='AGA', G='GGA', W='UGG', R='CGG', R='AGG', G='GGG')
# table of codons from rosalind website

matches <- c(match(codons, codon_table))
#match codons with codon table, produces number vector of matches 

proteins <- names(codon_table[matches])  
#turns character vector into the names (if F=UUU, return F not UUU)

paste(proteins[1:(length(proteins)-1)], collapse = "") 
#collapse character vector into character string format, remove last STOP codon

# while this is my solution, a great way to get the codon table is below: 

codon_trans <- scan( what=character(), textConnection("
UUU F      CUU L      AUU I      GUU V
UUC F      CUC L      AUC I      GUC V
UUA L      CUA L      AUA I      GUA V
UUG L      CUG L      AUG M      GUG V
UCU S      CCU P      ACU T      GCU A
UCC S      CCC P      ACC T      GCC A
UCA S      CCA P      ACA T      GCA A
UCG S      CCG P      ACG T      GCG A
UAU Y      CAU H      AAU N      GAU D
UAC Y      CAC H      AAC N      GAC D
UAA Stop   CAA Q      AAA K      GAA E
UAG Stop   CAG Q      AAG K      GAG E
UGU C      CGU R      AGU S      GGU G
UGC C      CGC R      AGC S      GGC G
UGA Stop   CGA R      AGA R      GGA G
UGG W      CGG R      AGG R      GGG G 
"
))
# this creates a character vector where all odd numbers are codons, and the protein is even 
# they use this to assign the names and codons into a table: 
lc <- length( codon_trans ) # sets variable for length of codon trans
codon_trans_table <- codon_trans[ seq(1, lc, by=2) ] # makes codon trans with just the codons
names( codon_trans_table ) <- codon_trans[ seq(2, lc, by=2) ] # assigns prot names to codons