# row.names(mtcars[n,])
end<- nrow(mtcars)

for(i in 1:end) {
  if ((mtcars[i,2]) == 8) {
    print(row.names(mtcars[i,]))
  }
}