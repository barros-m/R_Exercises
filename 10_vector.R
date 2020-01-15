i <- 1
x <- vector()
repeat
{
  num <- readline("Please entere a number: ")
  if (num == -1) {
    break
  } else {
    x[i] <- num
    i = i+1
  }
}
print(x)