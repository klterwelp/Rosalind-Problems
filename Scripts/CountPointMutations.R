# Counting Point Mutations
## Given: 2 DNA strings, s and t, equal length
## Return: Hamming distance dH(s, t)

library(tidyverse)
# loads tidyverse, necc. for readr

input <- scan("./Rosalind-Input/rosalind_hamm.txt", what = character()) %>%
  as.vector()
# creates list of DNA based on empty space (new line)
# turns list into a vector with as.vector

DNA1 <- input[1] %>% 
  strsplit(split = "") %>% #split string 
  unlist() #turn list into vector
  
DNA2 <- input[2] %>% 
  strsplit(split = "") %>% #split string 
  unlist()

Hamming <- 0 # create variable for counting Hamming distance

for(i in 1:length(DNA1)) { # for values in range 1 to length of seq
  if(DNA1[i] != DNA2[i]) { # if the two DNA bases are not equal
    Hamming = Hamming + 1  # add one to Hamming
    } }

print(Hamming)

# while this was my original answer, a better version is here: 
#instead of for loop: 
sum(DNA1!=DNA2)
# they also used readlines for opening the file