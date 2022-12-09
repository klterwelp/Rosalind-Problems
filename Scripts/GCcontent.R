#Computing GC Content

## Given: 10 DNA strings in FASTA format 
## Return: ID of string with highest GC-content, followed by GC content of string
library(tidyverse)
library(Biostrings)

input <- readDNAStringSet("./Rosalind-Input/rosalind_test_GC.txt")
# turns text file into DNAStringSet from Biostrings
data <- tibble(names = names(input), length = width(input), seq = as.character(input))
# turns input into a tibble 
data <- data %>% 
  mutate(GC = (str_count(data$seq, "G|C"))/data$length*100)
# adds GC content column to tibble 

data <- data %>%
  arrange(desc(data$GC))
# arranges tibble by GC content (descending down)

