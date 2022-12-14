# Translating RNA into Protein 

library(tidyverse)
# loads tidyverse, necc. for readr, stringr

# input <- scan("./Rosalind-Input/rosalind_hamm.txt", what = character()) %>%
  # as.vector()

input <- "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"
  
codons <- stri_sub(input, seq(1, str_length(input), by = 3), length = 3)
#stringi takes input, from  = seq starting at 1 by 3, length of characters is 3
# basically breaking string into codon 3-character vector 

codon_table <- c(F='UUU', L='CUU', I='AUU', V='GUU', F='UUC', L='CUC', I='AUC', V='GUC', L='UUA', L='CUA', I='AUA',V='GUA', L='UUG', L='CUG', M='AUG', V='GUG', S='UCU', P='CCU', T='ACU', A='GCU', S='UCC', P='CCC', T='ACC', A='GCC', S='UCA', P='CCA', T='ACA', A='GCA', S='UCG', P='CCG', T='ACG', A='GCG', Y='UAU', H='CAU', N='AAU', D='GAU', Y='UAC', H='CAC', N='AAC', D='GAC', Stop='UAA', Q='CAA', K='AAA', E='GAA', Stop='UAG', Q='CAG', K='AAG', E='GAG', C='UGU', R='CGU', S='AGU', G='GGU', C='UGC', R='CGC', S='AGC', G='GGC', Stop='UGA', R='CGA', R='AGA', G='GGA', W='UGG', R='CGG', R='AGG', G='GGG')
# table of codons from rosalind website

proteins <- match(codons, codon_table) %>% #makes a vector of positions where codons match
  names() %>% #turns positions into the names (if F=UUU, return F not UUU)
  paste(collapse = "") #collapse character vector into character string format

print(proteins)