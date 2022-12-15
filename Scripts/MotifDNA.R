# Finding a Motif in DNA 

input <- stri_read_lines("./Rosalind-Input/rosalind_subs.txt") 
# splits text file by line into character vector 

string <- input[1]
motif <- input[2]

matches <- as.data.frame(matchPattern(motif, string))
# uses biostring packages matchPattern to create a XStringviews of hits of the motif \
# transform into dataframe with as.data.frame() (baseR)

matches[,1]

#lists column 1 (start of each match)

# While this was my solution, here's some other cool ways to do it: 

#using Biostrings improved gregexpr2 

gregexpr2(input[2],input[1])
# gets you exactly what you need, no need to get a matrix of extra info 