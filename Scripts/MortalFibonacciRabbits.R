# Mortal Fibonacci Rabbits
## Given: positive intergers n<= 100 m<= 20 
## Return: Total number of rabbit pairs after n-th month if all rabbits live m months. 

n <- 6
m <- 3

dead <- c(0,0)
adults <- c(0,1)
babies <- c(1,0)
total <- c(1,1)


for(i in 3:(m)) { 
  dead[i] <- 0
  babies[i] <- adults[i-1]
  adults[i] <- adults[i-1]+babies[i-1]
  total[i] <- adults[i]+babies[i]} 

for(i in (m+1):n) {
  dead[i] <- babies[i-m]
  babies[i] <- adults[i-1]
  adults[i] <- adults[i-1]+babies[i-1]-dead[i]
  total[i]<-adults[i]+babies[i]}
    

total[n]
