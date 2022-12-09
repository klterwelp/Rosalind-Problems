#RabbitsAndRecurrenceRelations

## Given: Positive integers n<= 40, k <= 5
## Return: The total number of rabbit pairs that will be present after n months, 
    # if we begin with 1 pair and in each generation
    # every pair of reproduction-age rabbits produces a litter of k rabbit pairs 

# Equation: Fn = Fn-1 + k*Fn-2 

n <- 30
k <- 2

rabbits <- c(1,1)

for (i in 3:n) {
  rabbits[i] <- rabbits[i-1]+k*rabbits[i-2]
}

rabbits[n]