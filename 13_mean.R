ro <- vector()

row <- 4
col <- 3

for(i in 1:(row * col)) {
  a <- readline("Enter a number: ")
  x[i] <- as.integer(a)
  }


I3<-matrix(x,nrow=4, ncol = 3,byrow=TRUE)

g<-mean(as.integer(c(min(I3[1]),min(I3[2]),min(I3[3]),min(I3[4]))))

print(paste("min 1: ", min(I3[1])))

print(I3)
print(g)