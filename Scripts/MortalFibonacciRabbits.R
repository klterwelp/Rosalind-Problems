# Mortal Fibonacci Rabbits
## Given: positive itnergers n<= 100 m<= 20 
## Return: Total number of rabbit pairs after n-th month if all rabbits live m months. 

n <- 6
m <- 3

rabbits <- c(1,1)

for (i in 3:n) {
  if (i <= m ) {
    rabbits[i] <- rabbits[i-1]+rabbits[i-2] 
    print(rabbits[i]) } else {
      rabbits[i] <- rabbits[i-1]+rabbits[i-2]-rabbits[i-m]
      print(rabbits[i])
    }
}

rabbits[n]