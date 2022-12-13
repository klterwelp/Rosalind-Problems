# Mendel's First Law
## Given: three positive integers k, m, n 
### k = homo dom, m = hetero, n = homo rec 
## Return: probability 2 randomly selecting mating organisms produce >1 dom allele

k <- 18 
m <- 15 
n <- 21

total <- sum(k,n,m)

k_k <- (k/total)*((k-1)/(total-1))
k_m <- (k/total)*((m)/(total-1))*2 #same inverted, multiply by 2 
k_n <- (k/total)*((n)/(total-1))*2 #same inverted

# in punett square, 100% chance of org w/ dom allele

m_m <- (m/total)*((m-1)/(total-1))
m_n <- (m/total)*((n)/(total-1))*2 #same inverted 

#punett mm = 0.75 chance, punett mn = 0.5 chance 

n_n <- (n/total)*((n-1)/(total-1))
  
pKM <- k_k + k_m + k_n + m_m*0.75 + m_n*0.5 + n_n*0 

pKM

# while this is the way I solved it, there are better methods below: 

# find inverse probability (not get a dom) and do 1-p(nodom)

t <- k+m+n
p1 <- m*(m-1)*0.25
p2 <- m*n*2*0.5
p3 <- n*(n-1)*1

answer <- sum(p1,p2,p3)/(t*(t-1))
1-answer

#also used this time to simplify the answer, everything is divided by t(t-1) at end


