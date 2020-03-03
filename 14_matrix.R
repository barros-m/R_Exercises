x <-  5:10
The_Matrix.characters <- c("a", "b", "c", "d", "f", "g", "f", "g")
logic_interpretation <-  c(TRUE, TRUE)
allLists <-  list("Example of list", x, The_Matrix.characters, logic_interpretation, 2.71)
matrix(The_Matrix.characters,2,2)
print(allLists)
print(paste("The list contains", length(allLists), "elements"))