I3.labels<-list(c("r1","r2","r3"),c("c1","c2","c3"))
values <- round(runif(9, -2, 3))
I3<-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3,byrow=TRUE,dimnames = I3.labels)
print(I3)
M1 <- matrix(values,
             nrow =3, byrow = TRUE, dimnames = I3.labels)

sum <- I3 + M1
print("M1")
print(M1)

print("sum: ")
print(sum)

mul <- I3 %*% M1
print("mul: ")
print(mul)