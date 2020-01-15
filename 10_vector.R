i <- 1
x <- vector() # Create an empty vector

repeat
{
  num <- readline("Please enter a number: ")
  if (num == -1) {
    break # Break the loop
  } else { # else, keep adding to the vector
    x[i] <- num
    i = i+1
  }
}

print(x)
