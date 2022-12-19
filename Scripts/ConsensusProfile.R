# Consensus and Profile
## Given: Collection of DNA strings in FASTA format 
## Return: Consensus string and profile matix for collection 

input <- readDNAStringSet("./Rosalind-Input/rosalind_consensus2.txt")
# Biostrings creates DNAStringset object of FASTA sequences 

length <- width(input)
# finds length of DNA mol using biostrings width 

consensus <- consensusMatrix(input) 
# creates consensus matrix from biostring dnastring object

consensusAGCT <- consensus[1:4,]
#removes additional letters/bases that we aren't looking at 

answer <- c()
for(i in 1:length[1]) {
  answer[i] <- which(consensusAGCT[, i] == max(consensusAGCT[, i]), arr.ind = TRUE) %>%
    names()
}
# gives the name of each letter that is the max of the column
  # to be added to answer vec

paste(answer, collapse = "")
# collapses answer into a character string instead of vec 

cat("A: ", paste(consensusAGCT[1,], collapse = ""));
cat("C: ", paste(consensusAGCT[2,], collapse = ""));
cat("G: ", paste(consensusAGCT[3,], collapse = ""));
cat("T: ", paste(consensusAGCT[4,], collapse = ""))

