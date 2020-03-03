eid<-c(123,345,6576,234,4356)
empLN<-c("Smith","Ho","Spano","Torres","Agg")
empFN<-c("anne","hy","larry","pedro","Alice")
empyears<-c(1,4,6,7,8)
emp.db<-data.frame(eid,empLN,empFN,empyears)


names(emp.db) <- c("ID", "L Name", "F Name", "Years")

print(emp.db, row.names = F)
print("Range:")
